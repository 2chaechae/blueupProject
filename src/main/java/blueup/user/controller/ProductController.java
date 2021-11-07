package blueup.user.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.vo.ProductVo;
import blueup.user.service.ProductServiceImpl;
import blueup.user.vo.Category_detailVo;

@Controller
public class ProductController {
	@Autowired 
	private ProductServiceImpl productserviceimpl;
	
	// 하위 카테고리 기준 상품 조회
	@RequestMapping("/getProduct.do")
	public ModelAndView getProduct(HttpSession session) {
		//return value
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userNO") != null) {
			// 회원 - 위시리스트 db 이용
			System.out.println(session.getAttribute("userNO"));
			// 선택한 카테고리값 확인 
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			// 상위,하위 카테고리 리트스 얻어오기
			List<Category_detailVo> test = (List<Category_detailVo>) session.getAttribute("Category");
			// userNo vo에 넣기
			
			mav.addObject("Category", test); // 전체 카테고리 
			mav.addObject("Selected", cate.getDetailed_category_name()); // 선택한 카테고리 
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(cate)); // 선택 카테고리 기준 상품 & wishlist
			mav.setViewName("ProductView");
		}
		
		else {
			// 비회원 - 위시리스트 쿠키 이용 
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			List<Category_detailVo> test = (List<Category_detailVo>) session.getAttribute("Category");
			for(Category_detailVo i : test) {
				System.out.println(i.getCategory_name());
			}
			List<ProductVo> test1 = productserviceimpl.getProductListByDetailedCategory(cate);
			for(ProductVo m : test1) {
				System.out.println(m.getDetailed_category_name());
			}
			mav.addObject("Category", test);
			mav.addObject("Selected", cate.getDetailed_category_name());
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(cate));
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	// 상위 카테고리 기준 전체 상품 조회
	@RequestMapping("/getProductAll.do")
	public ModelAndView getProductByDetail(HttpSession session) {
		//return value
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userNO") != null) {
			// 회원 - 위시리스트 db 이용
			System.out.println(session.getAttribute("userNO"));
			// 선택한 카테고리 값 가져오기
			Category_detailVo vo = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("상위 카테고리 값 : " + vo.getCategory_name());
			
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo)); // 선택 카테고리 기준 상품 & wishlist
			mav.setViewName("ProductView");
		}else {
			// 비회원 - 위시리스트 쿠키 이용 
			Category_detailVo vo = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("상위 카테고리 값 : " + vo.getCategory_name());
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo));
			mav.setViewName("ProductView");
		}
		return mav;
	}
}
