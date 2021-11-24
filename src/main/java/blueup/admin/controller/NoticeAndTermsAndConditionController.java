package blueup.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.service.NoticeAndTermsAndConditionService;
import blueup.admin.vo.AdminVo;
import blueup.admin.vo.NoticeVo;
import blueup.admin.vo.Terms_and_conditionVo;

@Controller
public class NoticeAndTermsAndConditionController {
	@Autowired
	NoticeAndTermsAndConditionService service;
	
	
	@RequestMapping("/writeNotice.mdo")
	public ModelAndView adminNoticeWriteForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminNoticeWrite");
		return mav;
	}
	
	@RequestMapping("/writeNoticeProc.mdo")
	public ModelAndView writeNoticeProc(NoticeVo notice, AdminVo vo) {
		System.out.println("writeProc에서 넘겨 줄 id "+vo.getAdmin_id());
		System.out.println("writeProc에서 넘겨 줄 pw "+vo.getAdmin_password());
		System.out.println("작성한 공지 제목 : "+notice.getNotice_title());
		ModelAndView mav = new ModelAndView();
		service.writeNoticeProcService(notice);
		mav.setViewName("redirect:/getAdminLoginCheck.mdo?pageNum=1&admin_id="+vo.getAdmin_id()+"&admin_password="+vo.getAdmin_password());
		return mav;
	}
	
	
	@RequestMapping("/adminNoticeContent.mdo")
	public ModelAndView adminNoticeContent(int noticePm, int notice_no) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("noticePm", noticePm);
		mav.addObject("content", service.getNoticeContentService(notice_no));
		mav.addObject("notice_no", notice_no);
		mav.setViewName("adminGetNoticeContent");
		return mav;
	}
	
	@RequestMapping("/deleteNotice.mdo")
	public ModelAndView deleteNotice(AdminVo vo, int noticePageNum, int notice_no) {
		ModelAndView mav = new ModelAndView();
		service.deleteNoticeService(notice_no);
		mav.setViewName("redirect:/getAdminLoginCheck.mdo?pageNum="+noticePageNum+"&admin_id="+vo.getAdmin_id()+"&admin_password="+vo.getAdmin_password());
		return mav;
	}
	
	@RequestMapping("/modifyNotice.mdo")
	public ModelAndView modifyNotice(AdminVo vo, int noticePageNum, int notice_no) {
		ModelAndView mav = new ModelAndView();
		NoticeVo content = service.getNoticeContentService(notice_no);
		
		mav.addObject("notice", content);
		mav.addObject("admin_id", vo.getAdmin_id());
		mav.addObject("admin_pw", vo.getAdmin_password());
		mav.addObject("pageNum", noticePageNum);
		mav.addObject("notice_no", notice_no);
		mav.setViewName("adminNoticeModify");
		return mav;
	}
	
	@RequestMapping("/modifyNoticeProc.mdo")
	public ModelAndView noticeModifyProc(AdminVo admin, NoticeVo notice, int pageNum) {
		ModelAndView mav = new ModelAndView();
		service.modifyNoticeService(notice);
		mav.addObject("notice_no", notice.getNotice_no());
		mav.addObject("admin_id", admin.getAdmin_id());
		mav.addObject("admin_password", admin.getAdmin_password());
		mav.addObject("noticePm", pageNum);
		mav.setViewName("redirect:/adminNoticeContent.mdo?noticePm="+pageNum+"&notice_no="+notice.getNotice_no());
		return mav;
	}
	
	
	@RequestMapping("/adminTermsWrite.mdo")
	public ModelAndView termsWrite() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminTermsWrite");
		return mav;
	}
	
	@RequestMapping("/writeTermsProc.mdo")
	public ModelAndView writeTermsProc(AdminVo admin, Terms_and_conditionVo terms) {
		ModelAndView mav = new ModelAndView();
		System.out.println("약관 제목 : "+terms.getTerms_title());
		System.out.println("약관 내용 : "+terms.getTerms_content());
		service.writeTermsService(terms);
		mav.setViewName("redirect:/getAdminLoginCheck.mdo?admin_id="+admin.getAdmin_id()+"&admin_password="+admin.getAdmin_password()+"&termsPageNum=1");
		return mav;
	}
	
	@RequestMapping("/adminTermsContent.mdo")
	public ModelAndView getTermsContnet(int termsPm, int terms_no) {
		ModelAndView mav = new ModelAndView();
		Terms_and_conditionVo terms = service.getTermsService(terms_no);
		mav.addObject("terms", terms);
		mav.addObject("termsPm", termsPm);
		mav.addObject("terms_no", terms_no);
		return mav;
	}
	
	@RequestMapping("/deleteTerms.mdo")
	public ModelAndView deleteTerms(AdminVo vo, int terms_no, int termsPageNum) {
		ModelAndView mav = new ModelAndView();
		service.deleteTermsService(terms_no);
		// mav.addObject("admin_id", vo.getAdmin_id());
		// mav.addObject("admin_password", vo.getAdmin_password());
		mav.setViewName("redirect:getAdminLoginCheck.mdo?admin_id="+vo.getAdmin_id()+"&admin_password="+vo.getAdmin_password()+"&termsPageNum="+termsPageNum);
		return mav;
	}
	
	@RequestMapping("/modifyTerms.mdo")
	public ModelAndView modifyTerms(AdminVo vo, int terms_no, int termsPageNum) {
		ModelAndView mav = new ModelAndView();
		Terms_and_conditionVo terms = service.getTermsService(terms_no);
		mav.addObject("termsPageNum", termsPageNum);
		mav.addObject("terms_no", terms_no);
		mav.addObject("admin_id", vo.getAdmin_id());
		mav.addObject("admin_password", vo.getAdmin_password());
		mav.addObject("terms", terms);
		mav.setViewName("adminTermsModify");
		return mav;
	}
	
	@RequestMapping("/modifyTermsProc.mdo")
	public ModelAndView modifyTermsProc(AdminVo admin, Terms_and_conditionVo terms, int pageNum) {
		ModelAndView mav = new ModelAndView();
		service.modifyTermsService(terms);
		mav.setViewName("redirect:/getAdminLoginCheck.mdo?admin_id="+admin.getAdmin_id()+"&admin_password="+admin.getAdmin_password()+"&termsPageNum="+pageNum);
		return mav;
	}
}
