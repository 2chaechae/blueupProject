package blueup.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.ReviewService;
import blueup.user.vo.QnaVo;
import blueup.user.vo.ReviewVo;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewServiceimpl;

	// ∏Æ∫‰ ªË¡¶
	@RequestMapping("/deleteReview.do")
	public ModelAndView deleteReview(ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ReviewVO", reviewServiceimpl.deleteReview(vo));
		mav.setViewName("reviewView.do");
		return mav;
	}

	// ∏Æ∫‰ ºˆ¡§
	@RequestMapping("/updateReview.do")
	public ModelAndView updateReview(ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ReviewVO", reviewServiceimpl.updateReview(vo));
		mav.setViewName("reviewView.do");
		return mav;
	}
	
	
	// ∏Æ∫‰ µÓ∑œ
	@RequestMapping("/insertReview.do")
	public ModelAndView insertReview(ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ReviewVO", reviewServiceimpl.insertReview(vo));
		mav.setViewName("reviewView.do");
		return mav;
	}

	// ∏Æ∫‰ ∏ÆΩ∫∆Æ »£√‚
	@RequestMapping("/getReviewList.do")
	public ModelAndView getReviewList(ReviewVo vo, ModelAndView mav) {
		mav.addObject("reviewList", reviewServiceimpl.getReviewList(vo));
		mav.setViewName("reviewView");
		return mav;
	}
}
