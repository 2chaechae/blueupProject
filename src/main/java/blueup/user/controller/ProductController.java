package blueup.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.ProductServiceImpl;
import blueup.user.vo.Category_detailVo;

@Controller
public class ProductController {
	@Autowired 
	private ProductServiceImpl productserviceimpl;
	
	@RequestMapping("/getProduct.do")
	public ModelAndView getProduct(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("product test");
		ModelAndView mav = new ModelAndView();
		Category_detailVo vo = (Category_detailVo) request.getAttribute("Selected");
		mav.addObject("Category", request.getAttribute("Category"));
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
