package blueup.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaymentController {
	
	@RequestMapping("/payment.do")
	public ModelAndView payment() {
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
}
