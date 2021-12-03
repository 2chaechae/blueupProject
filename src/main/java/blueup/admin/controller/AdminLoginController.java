package blueup.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.service.AdminLoginServiceImpl;
import blueup.admin.service.NoticeAndTermsAndConditionService;
import blueup.admin.vo.AdminVo;
import blueup.admin.vo.NoticeVo;
import blueup.admin.vo.Terms_and_conditionVo;
import blueup.user.paging.Criteria;
import blueup.user.paging.PageMaker;

@Controller
public class AdminLoginController {

	@Autowired
	AdminLoginServiceImpl loginserviceimpl;
	@Autowired
	NoticeAndTermsAndConditionService ntcService;

	@RequestMapping("/adminLogin.mdo")
	public ModelAndView adminLogin(AdminVo vo, HttpServletRequest request) {
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("adminlogin");
		return mvc;
	}

	@RequestMapping("/getAdminLoginCheck.mdo")
	public ModelAndView getAdminloginCheck(AdminVo vo, HttpServletRequest request, @RequestParam(value="noticePageNum", required=false) String noticePageNum,
			@RequestParam(value="termsPageNum", required=false) String termsPageNum) {
		ModelAndView mvc = new ModelAndView();
		// 세션을 생성해준다.
		HttpSession session = request.getSession(true);

		// 첫 로그인 시 1페이지를 받아와준다
		if (noticePageNum == null) {
			noticePageNum = "1";
		}
		if (termsPageNum == null) {
			termsPageNum = "1";
		}
		int noticePage = Integer.parseInt(noticePageNum);
		int termsPage = Integer.parseInt(termsPageNum);
		int noticeCnt = ntcService.getNoticeCntService();
		int termsCnt = ntcService.getTermsCntService();

		Criteria noticeCri = new Criteria();
		noticeCri.setPage(noticePage);
		noticeCri.setPerPageNum(5);
		noticeCri.setPageStart();
		Criteria termsCri = new Criteria();
		termsCri.setPage(termsPage);
		termsCri.setPerPageNum(5);
		termsCri.setPageStart();

		// 약관을 가져올 메서드
		List<Terms_and_conditionVo> termsList = ntcService.getTermsAndConditionService(termsCri);
		// 공지를 가져올 메서드
		List<NoticeVo> noticeList = ntcService.getNoticeListService(noticeCri);
		
		PageMaker termsPm = new PageMaker();
		PageMaker noticePm = new PageMaker();
		
		termsPm.setCri(termsCri);
		termsPm.setTotalCount(termsCnt);
		noticePm.setCri(noticeCri);
		noticePm.setTotalCount(noticeCnt);

		System.out.println("파라미터로 받은 id : " + vo.getAdmin_id());
		System.out.println("파라미터로 받은 pass : " + vo.getAdmin_password());
		System.out.println("세션 ID : " + session.getId());

		AdminVo vo2 = loginserviceimpl.adminlogin(vo);
		System.out.println("db_id : " + vo2.getAdmin_id());
		System.out.println("db_pass : " + vo2.getAdmin_password());

		try { // 로그인 성공 시
			session.setAttribute("admin_id", vo2.getAdmin_id());
			session.setAttribute("admin_pw", vo2.getAdmin_password());
			System.out.println("세션값 디버깅 : " + session.getAttribute("admin_id"));
			mvc.addObject("noticeCri", noticeCri);
			mvc.addObject("termsCri", termsCri);
			mvc.addObject("noticeList", noticeList);
			mvc.addObject("termsList", termsList);
			mvc.addObject("noticePm",noticePm);
			mvc.addObject("termsPm", termsPm);
			mvc.addObject("noticeCnt", noticeCnt);
			mvc.addObject("termsCnt", termsCnt);
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
