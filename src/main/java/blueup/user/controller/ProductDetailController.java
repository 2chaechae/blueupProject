package blueup.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.paging.ReviewCriteria;
import blueup.user.paging.ReviewPageMaker;
import blueup.user.service.ProductDetailServiceImpl;
import blueup.user.vo.CartVo;
import blueup.user.vo.ProductDetailVo;
import blueup.user.vo.ReviewVo;

@Controller
public class ProductDetailController {

	@Autowired
	ProductDetailServiceImpl productDetailServiceimpl;
	
	/* 상품 상세 회원*/
	@RequestMapping("/productDetail.do")
	public ModelAndView selectProductDetail(@RequestParam(value="product_no") String product_no, @RequestParam(value="user_no") String user_no,
			@RequestParam(value="page_no", defaultValue="1") int page_no, @RequestParam(value="star", required=false) String star ) {
		
		System.out.println("회원 상품상세");
		ModelAndView mav = new ModelAndView();
		
		// 상품 vo 셋팅
		ProductDetailVo vo_p = new ProductDetailVo();
		vo_p.setProduct_no(Integer.parseInt(product_no));
		vo_p.setUser_no(Integer.parseInt(user_no)); 
		
		// 리뷰 vo 셋팅 및 페이징, 값 설정
		HashMap<String, Object> vo = new HashMap<String, Object>();
			ReviewCriteria cri = new ReviewCriteria();
			cri.setPage(page_no);	// 현재페이지
			cri.setPageStart(); 	// startRow 설정 ( 현재페이지를 넘기면 시작 줄 계산)
			System.out.println("페이지당 개수 :" + cri.getPerPageNum());
			System.out.println("페이지 시작 :" + cri.getStartRow());
			System.out.println("product_no" + product_no);
			ReviewPageMaker pageMaker = new ReviewPageMaker();
			pageMaker.setCri(cri);
			
			/*별점 기준 조회인지 아닌지 구분*/
			List<ReviewVo> reviewList = new ArrayList<ReviewVo>();
			System.out.println(star);
			/*일반 조회*/
			System.out.println("일반조회");
			vo.put("perPageNum", cri.getPerPageNum()); 	// 페이지당 게시물 갯수
			vo.put("startRow", cri.getStartRow());  	// 시작 번호
			vo.put("product", Integer.parseInt(product_no));
		
			pageMaker.setTotalCount(productDetailServiceimpl.reviewCount(Integer.parseInt(product_no)));
			System.out.println("총 게시물 수: " + pageMaker.getTotalCount());
				
			reviewList = productDetailServiceimpl.selectProductReview(vo);
	
			if(reviewList.size() == 0) {
				System.out.println("review null");
				mav.addObject("review", null);
			}else {
				System.out.println("review null 아님");
				mav.addObject("review", reviewList);
			}
		
			// color, size list 따로 받기
			List<ProductDetailVo> p =  productDetailServiceimpl.selectProductDetail(vo_p);
			String[] color = p.get(0).getProduct_color().split("/");
			String[] size = p.get(0).getProduct_size().split("/");
			for( String m : size ) {
				System.out.println(m);
			}
			
			mav.addObject("pageNum", page_no);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("productDetail", productDetailServiceimpl.selectProductDetail(vo_p));
			mav.addObject("banner", productDetailServiceimpl.selectProductBanner());
			mav.addObject("color", color);
			mav.addObject("size", size);
			mav.setViewName("productDetail");
			return mav;
	}
	
	/* 상품 상세 비회원*/
	@RequestMapping("/productDetailNonMember.do")
	public ModelAndView selectProductDetailNonMember(HttpServletRequest req, @RequestParam(value="product_no") String product_no, @RequestParam(value="page_no", defaultValue="1") int page_no) {
		System.out.println("비회원 상품상세");
		ModelAndView mav = new ModelAndView();
		ProductDetailVo vo = new ProductDetailVo();
		vo.setProduct_no(Integer.parseInt(product_no));
		List<ProductDetailVo> productlist = productDetailServiceimpl.selectProductDetailNonMember(vo);
		
		
		/*비회원 위시리스트 적용 */
		Cookie cookies[] = req.getCookies(); // 쿠키 리스트 얻기
		String[] p_no = null;				 // 상품 번호 리스트
		
		//쿠키값 null check 및 배열에 넣기
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
			for(int i =0; i < p_no.length; i++) {
					if(product_no.equals(p_no[i])){
						for(int j=0; j < productlist.size(); j++) {
							productlist.get(j).setWish_no(1);
					}
				}
			}
		}
		
		// 리뷰 vo 셋팅 및 페이징, 값 설정
		HashMap<String, Object> hash = new HashMap<String, Object>();
			ReviewCriteria cri = new ReviewCriteria();
			cri.setPage(page_no);	// 현재페이지
			cri.setPageStart(); 	// startRow 설정 ( 현재페이지를 넘기면 시작 줄 계산)
			System.out.println("페이지당 개수 :" + cri.getPerPageNum());
			System.out.println("페이지 시작 :" + cri.getStartRow());
			
			ReviewPageMaker pageMaker = new ReviewPageMaker();
			pageMaker.setCri(cri);
			
			/*별점 기준 조회인지 아닌지 구분*/
			List<ReviewVo> reviewList = new ArrayList<ReviewVo>();
			/*일반 조회*/
			System.out.println("일반조회");
			hash.put("perPageNum", cri.getPerPageNum()); 	// 페이지당 게시물 갯수
			hash.put("startRow", cri.getStartRow());  	// 시작 번호
			hash.put("product", Integer.parseInt(product_no));
				
			pageMaker.setTotalCount(productDetailServiceimpl.reviewCount(Integer.parseInt(product_no)));
			System.out.println("총 게시물 수: " + pageMaker.getTotalCount());
				
			reviewList = productDetailServiceimpl.selectProductReview(hash);
			
				if(reviewList.size() == 0) {
					System.out.println("review null");
					mav.addObject("review", null);
				}else {
					System.out.println("review null 아님");
					mav.addObject("review", reviewList);
				}
			
			// color, size list 따로 받기
			List<ProductDetailVo> p =  productDetailServiceimpl.selectProductDetailNonMember(vo);
			System.out.println(vo.getProduct_no());
			String[] color = p.get(0).getProduct_color().split("/");
			String[] size = p.get(0).getProduct_size().split("/");
			for( String m : size ) {
				System.out.println(m);
			}
			
			System.out.println("셋팅완료");
			mav.addObject("pageNum", page_no);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("productDetail", productlist);
			mav.addObject("banner", productDetailServiceimpl.selectProductBanner());
			mav.addObject("color", color);
			mav.addObject("size", size);
			mav.setViewName("productDetail");
			System.out.println("전송완료");
			return mav;
	}
	
	/*비회원 주문*/
	@RequestMapping("/addCartNonMemberOne.do")
	@ResponseBody
	public int addCartNonMemberOne(CartVo vo, HttpSession session) {
		int result = 0;
		System.out.println("비회원 주문이동");
			if(vo != null) {
				System.out.println(vo.getProduct_color());
				List<CartVo> list = new ArrayList<CartVo>();
				list.add(vo);
				System.out.println("add");
				session.setAttribute("orderNonMember", list);
				result = 1; 
			}
			System.out.println("result" + result);
		return result;
	}
	

	/*회원 주문*/
	@RequestMapping("/addCartOne.do")
	@ResponseBody
	public int addCartOne(CartVo vo, HttpSession session) {
		int result = 0;
		System.out.println("회원 주문이동");
			if(vo != null) {
				System.out.println(vo.getProduct_color());
				List<CartVo> list = new ArrayList<CartVo>();
				list.add(vo);
				System.out.println(vo.getUser_no());
				session.setAttribute("order", list);
				result = 1; 
			}
		return result;
	}
	
	/* 리뷰 페이지 이동 시 자료 */
	@RequestMapping("/selectReivew.do")
	@ResponseBody
	public ModelAndView selectReivew(@RequestParam(value="product_no") String product_no, @RequestParam(value="page_no", defaultValue="1") int page_no,
			@RequestParam(value="star", required = false) String star) {
	// 리뷰 vo 셋팅 및 페이징, 값 설정
		if(star == null || star.equals("null")) {
				System.out.println("노별점");
				HashMap<String, Object> hash = new HashMap<String, Object>();
				ReviewCriteria cri = new ReviewCriteria();
				List<ReviewVo> reviewList = new ArrayList<ReviewVo>();
				ModelAndView mav = new ModelAndView();
				
				cri.setPage(page_no);	// 현재페이지
				cri.setPageStart(); 	// startRow 설정 ( 현재페이지를 넘기면 시작 줄 계산)
				System.out.println("페이지당 개수 :" + cri.getPerPageNum());
				System.out.println("페이지 시작 :" + cri.getStartRow());
				
				ReviewPageMaker pageMaker = new ReviewPageMaker();
				pageMaker.setCri(cri);
				pageMaker.setTotalCount(productDetailServiceimpl.reviewCount(Integer.parseInt(product_no)));
				System.out.println("총 게시물 수: " + pageMaker.getTotalCount());
				
				System.out.println("일반조회");
				hash.put("perPageNum", cri.getPerPageNum()); 	// 페이지당 게시물 갯수
				hash.put("startRow", cri.getStartRow());  	// 시작 번호
				hash.put("product", Integer.parseInt(product_no));

				reviewList = productDetailServiceimpl.selectProductReview(hash);
				if(reviewList.size() == 0) {
					System.out.println("review null");
					mav.addObject("review", null);
				}else {
					System.out.println("review null 아님");
					mav.addObject("review", reviewList);
				}
				
				mav.addObject("pageNum", page_no);
				mav.addObject("pageMaker", pageMaker);
				mav.setViewName("Reviewhtml");
				return mav;
		}else {
			/*별점 기준 조회*/
			HashMap<String, Object> hash = new HashMap<String, Object>();
			ReviewCriteria cri = new ReviewCriteria();
			List<ReviewVo> reviewList = new ArrayList<ReviewVo>();
			ModelAndView mav = new ModelAndView();
			
			cri.setPage(page_no);	// 현재페이지
			cri.setPageStart(); 	// startRow 설정 ( 현재페이지를 넘기면 시작 줄 계산)
			System.out.println("페이지당 개수 :" + cri.getPerPageNum());
			System.out.println("페이지 시작 :" + cri.getStartRow());
			
			ReviewPageMaker pageMaker = new ReviewPageMaker();
			pageMaker.setCri(cri);
			
			System.out.println("일반조회");
			hash.put("perPageNum", cri.getPerPageNum()); 	// 페이지당 게시물 갯수
			hash.put("startRow", cri.getStartRow());  	// 시작 번호
			hash.put("product", Integer.parseInt(product_no));
			hash.put("star", star);
			System.out.println("페이지" + cri.getPerPageNum());
			System.out.println("시작번호" + cri.getStartRow());
			System.out.println("상품번호" + product_no);
			System.out.println("별" + star);
			
			pageMaker.setTotalCount(productDetailServiceimpl.reviewCountByStar(hash));
			System.out.println("총 게시물 수: " + pageMaker.getTotalCount());
			reviewList = productDetailServiceimpl.selectReviewByStar(hash);
			if(reviewList.size() == 0) {
				System.out.println("review null");
				mav.addObject("review", null);
			}else {
				System.out.println("review null 아님");
				mav.addObject("review", reviewList);
			}
			
			mav.addObject("pageNum", page_no);
			mav.addObject("pageMaker", pageMaker);
			mav.setViewName("Reviewhtml");
			return mav;

		}
	}
	
}
