package blueup.user.qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.qna.service.QnaService;

@Controller
public class QnaController {
	@Autowired 
	@Qualifier("qnaService")
	private QnaService qnaService;

	@RequestMapping("/qna.do")
	public ModelAndView getQnaInControlelr() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("qnaLimitList", qnaService.getQnaListTen());
		mav.setViewName("qna");
		return mav;
	}
}
