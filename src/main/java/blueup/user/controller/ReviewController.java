package blueup.user.controller;

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
	private ReviewService reviewServiceimpl;

	// ¸®ºä »èÁ¦
	@RequestMapping("/deleteReview.do")
	public ModelAndView deleteReview(ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ReviewVO", reviewServiceimpl.deleteReview(vo));
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
		mav.addObject("reviewList", reviewServiceimpl.getReviewList(vo));
		mav.setViewName("reviewView");
		return mav;
	}
	// ¸®ºä Á¤º¸¿Í ¾²±â Æû
	@RequestMapping("/getProductInfoForReview.do")
	public ModelAndView getProductInfoForReview(HttpSession session,ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		List<ReviewVo> reviewWrite = reviewServiceimpl.getProductInfoForReview(vo);
		System.out.println("¸®ºä ¾²±â Æû");
		mav.setViewName("reviewWrite");
		mav.addObject("getProductInfoForReview", reviewServiceimpl.getProductInfoForReview(vo));
		
		return mav;
	}
	
	
	
	// ¸®ºä µî·Ï
		@RequestMapping("insertReview.do")
		public ModelAndView insertReview(
			@RequestParam("review_title") String review_title,
			@RequestParam("review_content") String review_content,
			@RequestParam("star") int star,
			@RequestParam("user_no") int user_no,
			@RequestParam("String product_no") String product_no) {
			ReviewVo vo = new ReviewVo();
			vo.setUser_no(user_no);
			vo.setStar(star);
			vo.setReview_title(review_title);
			vo.setReview_title(review_title);
			vo.setReview_content(review_content);
			ModelAndView mav = new ModelAndView();
			/* ReviewService.insertReview(vo); */
			mav.setViewName("redirect:/getReviewList.do?user_no="+user_no);
			return mav;
		}

}