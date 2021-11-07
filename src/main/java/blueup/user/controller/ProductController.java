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
	
	// 상품 & 카테고리 불러오기
	@RequestMapping("/getProduct.do")
	public ModelAndView getProduct(HttpSession session) {
		System.out.println("getProduct 시작");
		Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
		System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
		//return 값
		ModelAndView mav = new ModelAndView();
		List<Category_detailVo> test = (List<Category_detailVo>) session.getAttribute("Category");
		mav.addObject("Category", test);
		mav.addObject("Selected", cate.getDetailed_category_name());
		mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(cate));
		mav.setViewName("ProductView");
		return mav;
	}
	
	// 상품 조회 화면에서 하위 카테고리 클릭시 상품 불러오기
	@RequestMapping("/getProductByDetail.do")
	public ModelAndView getProductByDetail(Category_detailVo vo) {
		ModelAndView mav = new ModelAndView();
		System.out.println("세컨 선택 값 : " + vo.getDetailed_category_name());
		mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
		mav.setViewName("pants");
		return mav;
		
	}
}
