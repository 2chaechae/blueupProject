package blueup.user.nocie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.main.vo.NoticeVo;
import blueup.user.notice.service.NoticeServiceImpl;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl noticeserviceimpl;
	
	@RequestMapping("/getNoticeList.do")
	public ModelAndView getNoticeList(NoticeVo vo, ModelAndView mav) {
		mav.addObject("noticeList", noticeserviceimpl.getnoticeList(vo));
		mav.setViewName("cscenter");
		return mav;
	}
	
	@RequestMapping("/updateNoticeCnt.do")
	public ModelAndView updateNoticeCnt(NoticeVo vo) {
		System.out.println("cnt");
		ModelAndView mav = new ModelAndView();
		noticeserviceimpl.updateNoticeCnt(vo);
		mav.setViewName("getNoticeList.do");
		return mav;
	}
	
	@RequestMapping("/insertNotice.do")
	public ModelAndView insertNotice(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.insertNotice(vo));
		mav.setViewName("redirect:cscenter.jsp");
		return mav;
	}
	
	@RequestMapping("/deleteNotice.do")
	public ModelAndView deleteNotice(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.deleteNotice(vo));
		mav.setViewName("redirect:cscenter.jsp");
		return mav;
	}
	

	@RequestMapping("/updateNotice.do")
	public ModelAndView updateNotice(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.updateNotice(vo));
		mav.setViewName("redirect:cscenter.jsp");
		return mav;
	}
}
