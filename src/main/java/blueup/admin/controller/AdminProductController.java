package blueup.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.service.AdminProductServiceImpl;

@Controller
public class AdminProductController {
	@Autowired 
	private AdminProductServiceImpl adminproductserviceimpl;
	
	@RequestMapping("/getProductList.mdo")
	public ModelAndView getProductList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", adminproductserviceimpl.getProductList());
		mav.setViewName("adminProductList");
		return mav;
	}
	
	@RequestMapping("/getProduct.mdo")
	public ModelAndView getProduct(int product_no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("product", adminproductserviceimpl.getProduct(product_no));
		mav.setViewName("adminProductView");
		return mav;
	}
}
