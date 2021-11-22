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

		System.out.println("�Ķ���ͷ� ���� id : " + vo.getAdmin_id());
		System.out.println("�Ķ���ͷ� ���� pass : " + vo.getAdmin_password());
		System.out.println("���� ID : " + session.getId());

		AdminVo vo2 = loginserviceimpl.adminlogin(vo);
		System.out.println("db_id : " + vo2.getAdmin_id());
		System.out.println("db_pass : " + vo2.getAdmin_password());

		try { // �α��� ���� ��
			session.setAttribute("admin_id", vo2.getAdmin_id());
			System.out.println("���ǰ� ����� : " + session.getAttribute("admin_id"));
			mvc.setViewName("adminnotice"); // ������ ������������ �̵�
		} catch (Exception e) { // vo2���� NullPointException ���ͼ� try~catch ����ϴ�!! - �α��� ���� ��
			mvc.setViewName("adminlogin"); // �α����������� �ٽ� �̵�
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
	/* ������ ������ ����������, ������ ������ �α��������� */
	/* �α��� ���н� �̵��ϴ� ��� */
}
