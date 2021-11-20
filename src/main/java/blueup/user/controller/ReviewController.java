package blueup.user.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.QnaService;
import blueup.user.service.ReviewService;
import blueup.user.vo.QnaVo;
import blueup.user.vo.ReviewVo;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;

	// ¸®ºä »èÁ¦
	@RequestMapping("/deleteReview.do")
	public ModelAndView deleteReview(ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ReviewVO", reviewService.deleteReview(vo));
		mav.setViewName("redirect:/getReviewList.do");
		return mav;
	}

	// ¸®ºä ¼öÁ¤
	@RequestMapping("/updateReview.do")
	public ModelAndView updateReview(ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ReviewVO");
		mav.setViewName("redirect:/getReviewList.do");
		return mav;
	}

	// ¸®ºä ¸®½ºÆ® È£Ãâ
	@RequestMapping("/getReviewList.do")
	public ModelAndView getReviewList(ReviewVo vo, ModelAndView mav) {
		mav.addObject("reviewList", reviewService.getReviewList(vo));
		mav.setViewName("reviewView");
		return mav;
	}

	// ¸®ºä Á¤º¸¿Í ¾²±â Æû
	@RequestMapping("/getProductInfoForReview.do")
	public ModelAndView getProductInfoForReview(HttpSession session, ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		ReviewVo reviewWrite = reviewService.getProductInfoForReview(vo);
		System.out.println("¸®ºäÁ¤º¸Ãâ·Â");
		mav.addObject("getProductInfoForReview", reviewWrite);
		mav.setViewName("reviewWrite");
		return mav;
	}

	// ¸®ºä µî·Ï

	@RequestMapping("/insertReview.do")
	public ModelAndView insertReview(
			String product_name,
			String product_size,
			int star,
			String review_title,
			String review_content,
			String user_id,
			Date review_time,
			String product_color,
			int review_photo_no 
			) {
		ModelAndView mav = new ModelAndView();
		ReviewVo vo = new ReviewVo();
		vo.setProduct_name(product_name);
		vo.setProduct_size(product_size);
		vo.setStar(star);
		vo.setReview_title(review_title);
		vo.setReview_content(review_content);
		vo.setUser_id(user_id);
		vo.setReview_time(review_time);
		vo.setProduct_color(product_color);
		vo.setReview_photo_no(review_photo_no);
		reviewService.insertReview(vo);
		mav.setViewName("reviewView");
		return mav;
		
	  
	}

}