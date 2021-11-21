package blueup.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.service.AdminLoginServiceImpl;
import blueup.admin.vo.AdminVo;

@Controller
public class AdminLoginController {

	@Autowired
	AdminLoginServiceImpl loginserviceimpl;

	@RequestMapping("/adminLogin.mdo")
	public ModelAndView adminLogin(AdminVo vo, HttpServletRequest request) {
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("adminlogin");
		return mvc;
	}
	
	@RequestMapping("/getAdminLoginCheck.mdo")
	public ModelAndView getAdminloginCheck(AdminVo vo, HttpServletRequest request) {
		ModelAndView mvc = new ModelAndView();
		
		HttpSession session = request.getSession(true);

		System.out.println("파라미터로 받은 id : " + vo.getAdmin_id());
		System.out.println("파라미터로 받은 pass : " + vo.getAdmin_password());
		System.out.println("세션 ID : " + session.getId());

		AdminVo vo2 = loginserviceimpl.adminlogin(vo);
		System.out.println("db_id : " + vo2.getAdmin_id());
		System.out.println("db_pass : " + vo2.getAdmin_password());

		try { // 로그인 성공 시
			session.setAttribute("admin_id", vo2.getAdmin_id());
			System.out.println("세션값 디버깅 : " + session.getAttribute("admin_id"));
			mvc.setViewName("adminnotice"); // 관리자 메인페이지로 이동
		} catch (Exception e) { // vo2에서 NullPointException 나와서 try~catch 썼습니당!! - 로그인 실패 시
			mvc.setViewName("adminlogin"); // 로그인페이지로 다시 이동
		}
		return mvc;
	}

	@RequestMapping("/getAdminLogout.mdo")
	public ModelAndView getAdminLogout(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession(false);
		session.invalidate();
		mav.setViewName("adminlogin");
		return mav;
	}
	/* 세션이 있으면 메인페이지, 세션이 없으면 로그인페이지 */
	/* 로그인 실패시 이동하는 경로 */
}
