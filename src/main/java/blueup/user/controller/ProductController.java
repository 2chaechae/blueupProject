package blueup.user.controller;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.vo.ProductVo;
import blueup.user.paging.PageMaker;
import blueup.user.paging.productCriteria;
import blueup.user.paging.productPageMaker;
import blueup.user.service.ProductServiceImpl;
import blueup.user.vo.Category_detailVo;

@Controller
public class ProductController {
	@Autowired 
	private ProductServiceImpl productserviceimpl;
	
	// 하위 카테고리 기준 상품 조회
	@RequestMapping("/getProduct.do")
	public ModelAndView getProduct(HttpSession session, HttpServletRequest req, @RequestParam(value="pageNum", defaultValue="1") int pageNum) {
		//return value
		ModelAndView mav = new ModelAndView();
		// 페이지 값 
		productCriteria cri = new productCriteria();
		cri.setPage(pageNum);
		cri.setPageStart();
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		
		// 총상품 개수
		pageMaker.setTotalCount(productserviceimpl.getCountProduct());
		System.out.println("총개시물수: " + pageMaker.getTotalCount());
		System.out.println("페이지당 개수 :" + cri.getPerPageNum());
		System.out.println("페이지 시작 :" + cri.getStartRow());
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		if(session.getAttribute("userNO") != null) {
			/////////////////////////회원//////////////////////////
			System.out.println("회원");
			System.out.println(session.getAttribute("userNO"));
			vo.put("userNO", session.getAttribute("userNO"));
			// 선택한 카테고리값 확인 
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			// 리스트 넘버 
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			// 상위,하위 카테고리 리트스 얻어오기
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			// userNo vo에 넣기
			
			List<ProductVo> test = productserviceimpl.getProductListByDetailedCategory(vo);
			for(ProductVo m : test) {
				System.out.println(m.getProduct_name());
			}
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList); // 전체 카테고리 
			mav.addObject("Selected", cate.getDetailed_category_name()); // 선택한 카테고리 
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo)); // 선택 카테고리 기준 상품 & wishlist
			mav.setViewName("ProductView");
		}
		
		else {
			/////////////////////////비회원//////////////////////////
			System.out.println("비회원");
			vo.put("userNO", 0);
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			
			// 카테고리 리스트 확인
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			for(Category_detailVo i : cateList) {
				System.out.println(i.getCategory_name());
			}
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			
			// 쿠키 값 확인 및 상품list mav에 추가
			List<ProductVo> productValue = productserviceimpl.getProductListByDetailedCategory(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			// 쿠키 값 확인 
			for(Cookie c : cookies) {
				if(c.getName().equals("product")) {
					String value = c.getValue();
					p_no = value.split("%2C");
				}
			}
			
			// 쿠키 값 == 상품번호 wish no 수정 
			if(p_no != null) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
						}
					}
				}
			}
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getDetailed_category_name());
			mav.addObject("Product", productValue);
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	// 상위 카테고리 기준 전체 상품 조회
	@RequestMapping("/getProductAll.do")
	public ModelAndView getProductByDetail(HttpSession session,  HttpServletRequest req, @RequestParam(value="pageNum", defaultValue="1") int pageNum) {
		
		productCriteria cri = new productCriteria();
		cri.setPage(pageNum);
		cri.setPageStart();
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		
		// 총상품 개수
		pageMaker.setTotalCount(productserviceimpl.getCountProduct());
		System.out.println("총개시물수: " + pageMaker.getTotalCount());
		System.out.println("페이지당 개수 :" + cri.getPerPageNum());
		System.out.println("페이지 시작 :" + cri.getStartRow());
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		ModelAndView mav = new ModelAndView();
		
		if(session.getAttribute("userNO") != null) {
			/////////////////////////회원//////////////////////////
			System.out.println(session.getAttribute("userNO"));
			vo.put("userNO", session.getAttribute("userNO"));
			// 선택한 카테고리 값 가져오기
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("상위 카테고리 값 : " + cate.getCategory_name());
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo)); // 선택 카테고리 기준 상품 & wishlist
			mav.setViewName("ProductView");
		}else {
			/////////////////////////비회원//////////////////////////
			System.out.println("비회원");
			vo.put("userNO", 0);
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("상위 카테고리 값 : " + cate.getCategory_name());
			
			// 카테고리 리스트 확인
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			for(Category_detailVo i : cateList) {
				System.out.println(i.getCategory_name());
			}
			
			// 쿠키 값 확인 및 상품list mav에 추가
			List<ProductVo> productValue = productserviceimpl.getProductListByCategory(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			// 쿠키 값 확인 
			for(Cookie c : cookies) {
				if(c.getName().equals("product")) {
					String value = c.getValue();
					p_no = value.split("%2C");
				}
			}
			
			// 쿠키 값 == 상품번호 wish no 수정 
			if(p_no != null) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
						}
					}
				}
			}
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getCategory_name());
			mav.addObject("Product", productValue);
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	@RequestMapping("/infinity.do")
	@ResponseBody
	public ModelAndView infinity(Integer id, String category_name, String detailed_category_name, Integer start, Integer end, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("jsonView");
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		System.out.println("아이디" + id);
		System.out.println("카테고리" + category_name);
		System.out.println("디테일" + detailed_category_name);
		System.out.println("시작" + start);
		System.out.println("끝" + end);
		if(id >= 0) {
			/////////////////////////회원//////////////////////////
			System.out.println("회원");
			vo.put("userNO", id);
			// 선택한 카테고리값 확인 
			Category_detailVo cate = new Category_detailVo();
			
			if(detailed_category_name == null) {
				System.out.println("상위카테");
				cate.setCategory_name(category_name);
				vo.put("Selected", cate);
				vo.put("start", start);
				vo.put("end", end);
				mav.addObject("Product", productserviceimpl.getProductListByCategory(vo));
				List<ProductVo> t = productserviceimpl.getProductListByCategory(vo);
				for(ProductVo m : t) {
					System.out.println(m.getProduct_name());
				}
			}else {
				System.out.println("디테일");
				cate.setCategory_name(category_name);
				cate.setDetailed_category_name(detailed_category_name);
				vo.put("Selected", cate);
				vo.put("start", start);
				vo.put("end", end);
				mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
				List<ProductVo> t = productserviceimpl.getProductListByDetailedCategory(vo);
				for(ProductVo m : t) {
					System.out.println(m.getProduct_name());
				}
				mav.setViewName("ProductView");
			}
			
		}else {
			/////////////////////////비회원//////////////////////////
			System.out.println("비회원");
			vo.put("userNO", 0);
			
			Category_detailVo cate = new Category_detailVo();
			
			if(detailed_category_name == null) {
				cate.setCategory_name(category_name);
				vo.put("Selected", cate);
				vo.put("start", start);
				vo.put("end", end);
				mav.addObject("Product", productserviceimpl.getProductListByCategory(vo));
			}else {
				cate.setCategory_name(category_name);
				cate.setDetailed_category_name(detailed_category_name);
				vo.put("Selected", cate);
				vo.put("start", start);
				vo.put("end", end);
				mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
			}
			
			// 쿠키 값 확인 및 상품list mav에 추가
			List<ProductVo> productValue = productserviceimpl.getProductListByDetailedCategory(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			// 쿠키 값 확인 
			for(Cookie c : cookies) {
				if(c.getName().equals("product")) {
					String value = c.getValue();
					p_no = value.split("%2C");
				}
			}
			
			// 쿠키 값 == 상품번호 wish no 수정 
			if(p_no != null) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
						}
					}
				}
			}
			mav.addObject("Product", productValue);
			mav.setViewName("ProductView");
		}
		List<ProductVo> p = (List<ProductVo>) mav.getModel().get("Product");
		return mav;
	}
	
	@RequestMapping("/getWishList.do")
	public ModelAndView getProductListBywishList(String userid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("wishList", productserviceimpl.getProductListBywishList(userid));
		mav.setViewName("wish");
		return mav;
	}
}
