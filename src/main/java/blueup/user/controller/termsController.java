package blueup.user.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.TermsServiceImpl;
import blueup.user.vo.Terms_and_conditionVo;

@Controller
public class termsController {
	@Autowired 
	private TermsServiceImpl termsserviceimpl;
	
	@ResponseBody
	@RequestMapping("/getTerms.do")
	public ModelAndView getTermsContext(Terms_and_conditionVo vo) {
		vo.setTerms_subtitle("이용약관");
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", termsserviceimpl.getTermsContent(vo));
		mav.setViewName("redirect:terms.jsp");
		return mav;
	}
}
