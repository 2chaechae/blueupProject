package blueup.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BenefitController {
	@RequestMapping("getBenefitPage.do")
	public ModelAndView getBenefit() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("benefit");
		return mav;
	}
}
