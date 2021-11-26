package blueup.user.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.ReviewService;
import blueup.user.vo.ReviewVo;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;

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
		System.out.println("작성가능한 리뷰 상품정보 출력");
		List<ReviewVo> test = (List<ReviewVo>) reviewService.getReviewproductList(vo);
		if(test.size() == 0) {
			mav.addObject("emptyReviewproduct", "없음");
		}else {
			mav.addObject("getReviewproductList", reviewService.getReviewproductList(vo));
		}
		mav.setViewName("reviewView");
		
		return mav;
	}

	// 내가 작성한 리뷰 리스트 호출
	@RequestMapping("/getReviewList.do")
	public ModelAndView getReviewList(@RequestParam(value = "user_no") int user_no) {
		System.out.println("test");
		ReviewVo vo = new ReviewVo();
		ModelAndView mav = new ModelAndView();
		vo.setUser_no(user_no);
		System.out.println(user_no);
		System.out.println("내가 작성한 리뷰 리스트 출력");
		List<ReviewVo> t = reviewService.getReviewList(vo);
		for (ReviewVo m : t) {
			System.out.println(m);
		}
		List<ReviewVo> test = (List<ReviewVo>) reviewService.getReviewList(vo);
		if(test.size() == 0) {
				mav.addObject("emptyReview", "없음");
		}else {
			mav.addObject("getReviewList", reviewService.getReviewList(vo));
		}
			mav.setViewName("reviewView");
			
			return mav;
		}

	// 리뷰 등록
	@RequestMapping("/insertReview.do")
	@ResponseBody
	public int insertReview(

			int product_no, /* ReviewVo, vo.set 다시 int로 */
			String star, String title, String content, String user_id, String product_name, String product_size,
			Date review_time, String product_color, Boolean review_status, int user_no) {
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
		vo.setReview_status(true);
		int result = reviewService.insertReview(vo);
		return result;

	}

	// 리뷰 삭제
	@RequestMapping("/deleteReview.do")
	@ResponseBody
	/* 리스폰스바디 쓸땐 int로. mav는 ,,, */
	public int deleteReview(HttpSession session, ReviewVo vo, String user_no) {
		System.out.println("리뷰가 삭제되었습니다");
		vo.setUser_no(Integer.parseInt(user_no));
		/* reviewService.deleteReview(vo); */
		/*->삭제를 하고 또 삭제를 해서*/
		/*
		 * user_no을 넣어서 넘겨야함 넘길 때 redirect로 넘기게되면 정보 사라짐 session에 저장해서 넘겨야 할듯 뿌잉 고생하는
		 * 숭민이 >< ㅎㅎㅎㅎㅎ
		 */
		int result = reviewService.deleteReview(vo);
		System.out.println(result);
		return result;
	}

	// 리뷰 수정 폼으로 ㄱ
	@RequestMapping("/modifyReview.do")
	@ResponseBody
	public int modifyReview(int user_no, int review_no) {
	ModelAndView mav =new ModelAndView();
	ReviewVo vo =new ReviewVo();
	mav.setViewName("reviewModifyWrite");
	int result = reviewService.modifyReview(vo);
	System.out.println("리뷰수정으로가는거 테스트");
	return result;
	
	//@RequestMapping("/modifyReview.do")
	//public ModelAndView modifyReview(HttpSession session, ReviewVo vo, ModelAndView mav, ReviewVo user_no,
	//		int review_no) {
	//System.out.println("test555");
	//ReviewVo vo = reviewService.modifyReview(user_no);
	//	mav.addObject("modifyReview", user_no);
	//	mav.setViewName("reviewModifyWrite");
	//	return mav;
	}
}



