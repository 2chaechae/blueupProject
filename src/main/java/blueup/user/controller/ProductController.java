package blueup.user.controller;
import java.util.HashMap;
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
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		if(session.getAttribute("userNO") != null) {
			// 회원 - 위시리스트 db 이용
			System.out.println(session.getAttribute("userNO"));
			vo.put("userNO", session.getAttribute("userNO"));
			// 선택한 카테고리값 확인 
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			// 상위,하위 카테고리 리트스 얻어오기
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			// userNo vo에 넣기
			mav.addObject("Category", cateList); // 전체 카테고리 
			mav.addObject("Selected", cate.getDetailed_category_name()); // 선택한 카테고리 
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo)); // 선택 카테고리 기준 상품 & wishlist
			mav.setViewName("ProductView");
		}
		
		else {
			// 비회원 - 위시리스트 쿠키 이용 
			// 선택한 카테고리값 확인 
			vo.put("userNO", 0);
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			// 카테고리 리스트 확인
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			for(Category_detailVo i : cateList) {
				System.out.println(i.getCategory_name());
			}
			// 상품 확인
			List<ProductVo> test1 = productserviceimpl.getProductListByDetailedCategory(vo);
			for(ProductVo m : test1) {
				System.out.println(m.getDetailed_category_name());
			}
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getDetailed_category_name());
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	// 상위 카테고리 기준 전체 상품 조회
	@RequestMapping("/getProductAll.do")
	public ModelAndView getProductByDetail(HttpSession session) {
		//return value
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userNO") != null) {
			// 회원 - 위시리스트 db 이용
			System.out.println(session.getAttribute("userNO"));
			vo.put("userNO", session.getAttribute("userNO"));
			// 선택한 카테고리 값 가져오기
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("상위 카테고리 값 : " + cate.getCategory_name());
			
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo)); // 선택 카테고리 기준 상품 & wishlist
			mav.setViewName("ProductView");
//		}else {
//			// 비회원 - 위시리스트 쿠키 이용 
//			Category_detailVo vo = (Category_detailVo) session.getAttribute("Selected");
//			System.out.println("상위 카테고리 값 : " + vo.getCategory_name());
//			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo));
//			mav.setViewName("ProductView");
//		}
		}
		return mav;
	}
}
