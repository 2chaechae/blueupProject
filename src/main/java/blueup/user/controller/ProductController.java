package blueup.user.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

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
	public ModelAndView getProduct(HttpSession session) {
		System.out.println("getProduct 시작");
		Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
		System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
		ModelAndView mav = new ModelAndView();
		List<Category_detailVo> test = (List<Category_detailVo>) session.getAttribute("Category");
		for(Category_detailVo m : test) {
			System.out.println(m.getCategory_name());
			System.out.println(m.getDetailed_category_name());
		}
		mav.addObject("Category", test);
		mav.addObject("Selected", cate.getDetailed_category_name());
		mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(cate));
		mav.setViewName("pants");
		return mav;
	}
	
	@RequestMapping("/getProductByDetail.do")
	public ModelAndView getProductByDetail(Category_detailVo vo) {
		ModelAndView mav = new ModelAndView();
		System.out.println("세컨 선택 값 : " + vo.getDetailed_category_name());
		mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
		mav.setViewName("pants");
		return mav;
		
	}
}
