package blueup.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.CategoryServiceImpl;
import blueup.user.service.ProductServiceImpl;
import blueup.user.vo.Category_detailVo;

@Controller
public class ProductController {
	@Autowired 
	private ProductServiceImpl productserviceimpl;
	@Autowired
	private CategoryServiceImpl categoryserviceimpl;
	
	@RequestMapping("/getProduct.do")
	public ModelAndView getProduct(Category_detailVo vo) {
		System.out.println(vo.getCategory_name());
		System.out.println(vo.getDetailed_category_name());
		System.out.println("product test");
		ModelAndView mav = new ModelAndView();
		mav.addObject("Category", categoryserviceimpl.getCategory(vo));
		List<Category_detailVo> t = categoryserviceimpl.getCategory(vo);
		for(Category_detailVo m : t) {
			System.out.println(m.getCategory_name());
			System.out.println(m.getDetailed_category_name());
		}
		mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
		mav.setViewName("pants");
		return mav;
	}                     
	
	/*
	public ModelAndView getProduct(Category_detailVo vo, ModelAndView mav) {
		System.out.println("product test");
		List<Category_detailVo> vor = (List<Category_detailVo>) mav.getModel().get("Category");
		for(Category_detailVo i : vor) {
			System.out.println(i.getCategory_name());
		}
		mav.addObject("Category", mav.getModel().get("Category"));
		mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
		mav.setViewName("pants");
		return mav;
	}
	*/
}
