package blueup.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.ProductServiceImpl;

@Controller
public class MainController {

	@Autowired
	private ProductServiceImpl productServiceimpl;
	
	@RequestMapping("/index.do")
	public ModelAndView Gotomain() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("CapList", productServiceimpl.getProductMain());
		mav.setViewName("indexmlb");
		return mav;
	}
}
