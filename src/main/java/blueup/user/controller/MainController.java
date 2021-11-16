package blueup.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping("/index.do")
	public ModelAndView Gotomain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("indexmlb");
		return mav;
	}
}
