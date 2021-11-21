package blueup.user.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.QnaService;
import blueup.user.service.ReviewService;
import blueup.user.vo.QnaVo;
import blueup.user.vo.ReviewVo;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;

	// 리뷰 삭제
	@RequestMapping("/deleteReview.do")
	public ModelAndView deleteReview(ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ReviewVO", reviewService.deleteReview(vo));
		mav.setViewName("redirect:/getReviewList.do");
		return mav;
	}

	// 리뷰 수정
	@RequestMapping("/updateReview.do")
	public ModelAndView updateReview(ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ReviewVO");
		mav.setViewName("redirect:/getReviewList.do");
		return mav;
	}

	
	

	// 리뷰 정보와 쓰기 폼
	@RequestMapping("/getProductInfoForReview.do")
	public ModelAndView getProductInfoForReview(HttpSession session, ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		ReviewVo reviewWrite = reviewService.getProductInfoForReview(vo);
		System.out.println("리뷰정보출력");
		mav.addObject("getProductInfoForReview", reviewWrite);
		mav.setViewName("reviewWrite");
		return mav;
	}

	// 작성가능한 리뷰 상품 정보 호출
			@RequestMapping("/getReviewproductList.do")
			public ModelAndView getReviewproductList(HttpSession session, ReviewVo vo, ModelAndView mav) {
			
				System.out.println("상품 정보 출력");
				mav.addObject("getReviewproductList", reviewService.getReviewproductList(vo));
				mav.setViewName("reviewView");
				return mav;
			}

	// 내가 작성한 리뷰 리스트 호출
			@RequestMapping("/getReviewList.do")
			public ModelAndView getReviewList(HttpSession session, ReviewVo vo, ModelAndView mav) {
				System.out.println("상품 정보 출력");
				mav.addObject("getReviewList", reviewService.getReviewList(vo));
				mav.setViewName("reviewView");
				return mav;
			}
			
			
	// 리뷰 등록
	@RequestMapping("/insertReview.do")
	public ModelAndView insertReview(
			
			int product_no,
			String star,
			String title,
			String content,
			String user_id,
			String product_name,
			String product_size,
			Date review_time,
			String product_color,
			String main_image,
			Boolean review_status,
			int user_no
	/* int review_photo_no */
			) {
		System.out.println(1);
		ModelAndView mav = new ModelAndView();
		ReviewVo vo = new ReviewVo();
		vo.setProduct_name(product_name);
		vo.setProduct_size(product_size);
		System.out.println(5);
		vo.setStar(Integer.parseInt(star));
		vo.setReview_title(title);
		vo.setReview_content(content);
		vo.setUser_id(user_id);
		vo.setReview_time(review_time);
		vo.setProduct_color(product_color);
		vo.setUser_no(user_no);
		vo.setProduct_no(product_no);
		vo.setMain_image("dd"); 
		vo.setReview_status(true);
		reviewService.insertReview(vo);		
		mav.setViewName("/getReviewList.do");
		return mav;
		
	  
	}

}