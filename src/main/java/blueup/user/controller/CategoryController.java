package blueup.user.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.CategoryServiceImpl;
import blueup.user.vo.CategoryVo;

@Controller
public class CategoryController {
	@Autowired 
	private CategoryServiceImpl categoryserviceimpl;
	
	@ResponseBody
	@RequestMapping("/getCategory.do")
	public ModelAndView getCategory(CategoryVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("Category", categoryserviceimpl.getCategory(vo));
		mav.setViewName("pants");
		return mav;
	}
}
