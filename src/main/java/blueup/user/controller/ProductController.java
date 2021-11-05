package blueup.user.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.vo.ProductVo;
import blueup.user.service.ProductServiceImpl;
import blueup.user.vo.CategoryVo;

@Controller
public class ProductController {
	@Autowired 
	private ProductServiceImpl productserviceimpl;
	
	@RequestMapping("/getProduct.do")
	public ModelAndView getProduct(ProductVo vo) {
		System.out.println("getProduct Ω√¿€" + vo.getDetailed_category_name());
		ModelAndView mav = new ModelAndView();
		List<ProductVo> tvo = productserviceimpl.getProductListByDetailedCategory(vo);
		for(ProductVo i : tvo) {
			System.out.println(i.getProduct_name());
		}
		CategoryVo Cvo = new CategoryVo();
		Cvo.setCategory_name(vo.getCategory_name());
		mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
		mav.addObject("CategoryVo", Cvo);
		mav.setViewName("redirect:getCategory.do");
		return mav;
	}
}
