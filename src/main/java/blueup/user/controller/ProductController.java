package blueup.user.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.vo.ProductVo;
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
		//return value & 파라미터 vo 생성
		ModelAndView mav = new ModelAndView();
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		
		// 페이징 설정
		productCriteria cri = new productCriteria();
		cri.setPage(pageNum);	// 현재페이지
		cri.setPageStart(); 	// startRow 설정 ( 현재페이지를 넘기면 시작 줄 계산)
		System.out.println("페이지당 개수 :" + cri.getPerPageNum());
		System.out.println("페이지 시작 :" + cri.getStartRow());
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		
		/////////////////////회원//////////////////////////
		if(!session.getAttribute("userNO").equals("0")) {
			System.out.println("회원");
			System.out.println(session.getAttribute("userNO"));
			// 파라미터 vo 셋팅
			vo.put("user_no", session.getAttribute("userNO")); // 회원 번호
			vo.put("Selected", session.getAttribute("Selected")); //선택한 카테고리
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			vo.put("perPageNum", cri.getPerPageNum()); 	// 페이지당 게시물 갯수
			vo.put("startRow", cri.getStartRow());  	// 시작 번호
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			pageMaker.setTotalCount(productserviceimpl.getCountProductDetail(vo)); // 총 게시물 갯수
			System.out.println("총 게시물 수: " + pageMaker.getTotalCount());

			mav.addObject("check", "bottom");
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList); // 전체 카테고리 ( 각 상품 조회 화면 카테고리 설정을 위해)
			mav.addObject("Selected", cate.getDetailed_category_name()); // 선택한 카테고리 
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
			mav.setViewName("ProductView");
		}
		
		/////////////////////////비회원//////////////////////////
		else {
			System.out.println("비회원");
			
			// 파라미터 vo 셋팅
			vo.put("user_no", session.getAttribute("userNO"));	// 동일 메서드 사용을 위해 비회원일 경우 0 셋팅
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("선택한 값 :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			pageMaker.setTotalCount(productserviceimpl.getCountProductDetail(vo)); // 총 게시물 갯수
			System.out.println("총 게시물 수: " + pageMaker.getTotalCount());
			
			// 쿠키 값 확인 및 상품 list mav에 추가
			List<ProductVo> productValue = productserviceimpl.getProductListByDetailedCategory(vo);
			Cookie cookies[] = req.getCookies(); // 쿠키 리스트 얻기
			String[] p_no = null;				 // 상품 번호 리스트
			
			//쿠키값 확인
			for(Cookie c : cookies) {
				if(c.getName().equals("p_list")) {
					System.out.println("쿠키체크");
					String value = c.getValue();
					if(value == "") {
						System.out.println(" 빈문자열");
						 p_no = null;
					}else {
						p_no = value.split("%2F");
					}
				}
			}
			
			// 위의 p_no 값과 상품번호 같으면, wish no 1(T)로 수정(T/F)
			if(!ArrayUtils.isEmpty(p_no)) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(p == ""){
							continue;
						}
						if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
						}
					}
				}
			}
			mav.addObject("check", "bottom");
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getDetailed_category_name());
			mav.addObject("Product", productValue); // 쿠키값 반영한 상품 정보 전달
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	// 상위 카테고리 기준 전체 상품 조회
	@RequestMapping("/getProductAll.do")
	public ModelAndView getProductByDetail(HttpSession session,  HttpServletRequest req, @RequestParam(value="pageNum", defaultValue="1") int pageNum) {
		// return 값 & 파라미터 vo 생성
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		ModelAndView mav = new ModelAndView();
		
		// 페이징 설정
		productCriteria cri = new productCriteria();
		cri.setPage(pageNum);
		cri.setPageStart();
		System.out.println("페이지당 개수 :" + cri.getPerPageNum());
		System.out.println("페이지 시작 :" + cri.getStartRow());
		
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		/////////////////////////회원//////////////////////////
		if(!session.getAttribute("userNO").equals("0")) {
			System.out.println("회원-상위카테");
			System.out.println(session.getAttribute("userNO"));
			
			// 파라미터 vo 셋팅
			vo.put("user_no", session.getAttribute("userNO"));
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("상위 카테고리 값 : " + cate.getCategory_name());
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			pageMaker.setTotalCount(productserviceimpl.getCountProduct(vo));
			System.out.println("총게시물수: " + pageMaker.getTotalCount());
			
			// 리턴 값 셋팅
			mav.addObject("check", "top");
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo)); // 선택 카테고리 기준 상품 & wishlist
			mav.setViewName("ProductView");
		}else {
			/////////////////////////비회원//////////////////////////
			System.out.println("비회원-상위카테");
			
			//파라미터 vo 셋팅
			vo.put("user_no", session.getAttribute("userNO"));
			vo.put("Selected", session.getAttribute("Selected"));
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("상위 카테고리 값 : " + cate.getCategory_name());
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			pageMaker.setTotalCount(productserviceimpl.getCountProduct(vo)); // 총 게시물 갯수
			System.out.println("총 게시물 수: " + pageMaker.getTotalCount());
			
			// 쿠키 값 확인 및 상품 list mav에 추가
			List<ProductVo> productValue = productserviceimpl.getProductListByCategory(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			
			//쿠키값 확인
			for(Cookie c : cookies) {
				if(c.getName().equals("p_list")) {
					System.out.println("쿠키체크");
					String value = c.getValue();
					if(value == "") {
						System.out.println(" 빈문자열");
						 p_no = null;
					}else {
						p_no = value.split("%2F");
					}
				}
			}
			
			// 쿠키 값 == 상품번호 wish no 수정 
			if(!ArrayUtils.isEmpty(p_no)) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(p == ""){
							continue;
						}else{
							if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
							System.out.println(p);
							}
						}
					}
				}
			}
			// 리턴값 설정
			mav.addObject("check", "top");
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getCategory_name());
			mav.addObject("Product", productValue);
			mav.setViewName("ProductView");
		}
		return mav;
	}

	
	//////////// 회원 wish//////////////
	@RequestMapping("/getWishList.do")
	public ModelAndView getProductListBywishList(@RequestParam(value="user_no", required=false) String user_no, HttpServletRequest req, HttpServletResponse repo) {
		System.out.println("위시리스트 가져오기");
		System.out.println(user_no);
		ModelAndView mav = new ModelAndView();
		// 리턴값 셋팅
		if( user_no != null) {
			mav.addObject("wishList", productserviceimpl.getProductListBywishList(user_no));
			mav.setViewName("wish");
		}else {
			List<ProductVo> product = productserviceimpl.getProductList();
			
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			List<ProductVo> productValue = new ArrayList<ProductVo>();
			
			// 쿠키 값 확인 
			for(Cookie c : cookies) {
				if(c.getName().equals("p_list")) {
					System.out.println("쿠키체크");
					String value = c.getValue();
					if(value == "") {
						System.out.println(" 빈문자열");
						 p_no = null;
					}else {
						p_no = value.split("%2F");
					}
				}
			}
			// 쿠키 값 == 상품번호 wish no 수정 
			if(!ArrayUtils.isEmpty(p_no)) {
				for(int i =0; i < product.size(); i++) {
					for(String p : p_no) {
						if(p == ""){
							continue;
						}else{
							if (Integer.parseInt(p) == product.get(i).getProduct_no()) {
								product.get(i).setWish_no(1);
								productValue.add(product.get(i));
							}
						}
					}
				}
			}
			mav.addObject("wishList", productValue);
			mav.setViewName("wish");
		}
		return mav;
	}
	
	/* 상품 조회수 */
	@RequestMapping("/updateViewCount.do")
	@ResponseBody
	public int updateViewCount(ProductVo vo) {
		return productserviceimpl.updateViewCount(vo);
	}
	
	/* 세일 상품 조회*/
	@RequestMapping("/getSaleProduct.do")
	public ModelAndView getSaleProduct(@RequestParam(value="user_no", required=false)String user_no, 
			@RequestParam(value="pageNum", defaultValue="1")int pageNum, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		productCriteria cri = new productCriteria();
		System.out.println(user_no);
		cri.setPage(pageNum);
		cri.setPageStart();
		System.out.println("페이지당 개수 :" + cri.getPerPageNum());
		System.out.println("페이지 시작 :" + cri.getStartRow());
		
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		
		if(user_no != null) {
			HashMap<Object, Object> vo = new HashMap<Object, Object>();
			vo.put("user_no", user_no);
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			
			pageMaker.setTotalCount(productserviceimpl.getSaleProductCount());
			System.out.println("총게시물수: " + pageMaker.getTotalCount());
			
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", "SALES");
			mav.addObject("Product", productserviceimpl.getSaleProduct(vo));
			mav.setViewName("ProductViewForSale");
		}else {
			HashMap<Object, Object> vo = new HashMap<Object, Object>();
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			
			pageMaker.setTotalCount(productserviceimpl.getSaleProductCount());
			System.out.println("총게시물수: " + pageMaker.getTotalCount());
			
			List<ProductVo> productValue = productserviceimpl.getSaleProductNonMember(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			
			//쿠키값 확인
			for(Cookie c : cookies) {
				if(c.getName().equals("p_list")) {
					System.out.println("쿠키체크");
					String value = c.getValue();
					if(value == "") {
						System.out.println(" 빈문자열");
						 p_no = null;
					}else {
						p_no = value.split("%2F");
					}
				}
			}
			
			// 쿠키 값 == 상품번호 wish no 수정 
			if(!ArrayUtils.isEmpty(p_no)) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(p == ""){
							continue;
						}else{
							if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
							System.out.println(p);
							}
						}
					}
				}
			}
			
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", "SALES");
			mav.addObject("Product", productValue);
			mav.setViewName("ProductViewForSale");
		}
		return mav;
	}
	
}
