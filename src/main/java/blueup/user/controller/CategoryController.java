package blueup.user.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.CategoryServiceImpl;
import blueup.user.vo.Category_detailVo;

@Controller
public class CategoryController<ModelAndVeiw> {
	@Autowired 
	private CategoryServiceImpl categoryserviceimpl;
	
	@ResponseBody
	@RequestMapping("/getCategory.do")
	public ModelAndView getCategory( HttpSession session, Category_detailVo vo) {
		session.setAttribute("Category", categoryserviceimpl.getCategory(vo));
		session.setAttribute("Selected", vo);
		System.out.println(vo.getCategory_name());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/getProduct.do");
		return mav;
	}

	/*
	public ModelAndView getCategory(Category_detailVo vo) {
		System.out.println("cate ����");
		ModelAndView mav = new ModelAndView();
		mav.addObject("Category", categoryserviceimpl.getCategory(vo));
		mav.setViewName("forward:/getProduct.do");
		return mav;
	}
	*/
}
