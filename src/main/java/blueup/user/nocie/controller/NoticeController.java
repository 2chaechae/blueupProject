package blueup.user.nocie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.notice.service.NoticeServiceImpl;
import blueup.user.notice.vo.NoticeVo;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl noticeserviceimpl;
	
	@RequestMapping("/getNoticeList.do")
	public ModelAndView getNoticeList(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.getnoticeList(vo));
		mav.setViewName("redirect:cscenter.jsp");
		return mav;
	}
}
