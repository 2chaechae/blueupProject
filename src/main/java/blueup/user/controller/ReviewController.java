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

	// ���� ������ ���� ��
	@RequestMapping("/getProductInfoForReview.do")
	public ModelAndView getProductInfoForReview(HttpSession session, ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		ReviewVo reviewWrite = reviewService.getProductInfoForReview(vo);
		System.out.println("�����������");
		mav.addObject("getProductInfoForReview", reviewWrite);
		mav.setViewName("reviewWrite");
		return mav;
	}

	// �ۼ������� ���� ��ǰ ���� ȣ��
	@RequestMapping("/getReviewproductList.do")
	public ModelAndView getReviewproductList(HttpSession session, ReviewVo vo, ModelAndView mav) {
		System.out.println("�ۼ������� ���� ��ǰ���� ���");
		List<ReviewVo> test = (List<ReviewVo>) reviewService.getReviewproductList(vo);
		if(test.size() == 0) {
			mav.addObject("emptyReviewproduct", "����");
		}else {
			mav.addObject("getReviewproductList", reviewService.getReviewproductList(vo));
		}
		mav.setViewName("reviewView");
		
		return mav;
	}

	// ���� �ۼ��� ���� ����Ʈ ȣ��
	@RequestMapping("/getReviewList.do")
	public ModelAndView getReviewList(@RequestParam(value = "user_no") int user_no) {
		System.out.println("test");
		ReviewVo vo = new ReviewVo();
		ModelAndView mav = new ModelAndView();
		vo.setUser_no(user_no);
		System.out.println(user_no);
		System.out.println("���� �ۼ��� ���� ����Ʈ ���");
		List<ReviewVo> t = reviewService.getReviewList(vo);
		for (ReviewVo m : t) {
			System.out.println(m);
		}
		List<ReviewVo> test = (List<ReviewVo>) reviewService.getReviewList(vo);
		if(test.size() == 0) {
				mav.addObject("emptyReview", "����");
		}else {
			mav.addObject("getReviewList", reviewService.getReviewList(vo));
		}
			mav.setViewName("reviewView");
			
			return mav;
		}

	// ���� ���
	@RequestMapping("/insertReview.do")
	@ResponseBody
	public int insertReview(

			int product_no, /* ReviewVo, vo.set �ٽ� int�� */
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

	// ���� ����
	@RequestMapping("/deleteReview.do")
	@ResponseBody
	/* ���������ٵ� ���� int��. mav�� ,,, */
	public int deleteReview(HttpSession session, ReviewVo vo, String user_no) {
		System.out.println("���䰡 �����Ǿ����ϴ�");
		vo.setUser_no(Integer.parseInt(user_no));
		/* reviewService.deleteReview(vo); */
		/*->������ �ϰ� �� ������ �ؼ�*/
		/*
		 * user_no�� �־ �Ѱܾ��� �ѱ� �� redirect�� �ѱ�ԵǸ� ���� ����� session�� �����ؼ� �Ѱܾ� �ҵ� ���� ����ϴ�
		 * ������ >< ����������
		 */
		int result = reviewService.deleteReview(vo);
		System.out.println(result);
		return result;
	}

	// ���� ���� ������ ��
	@RequestMapping("/modifyReview.do")
	@ResponseBody
	public int modifyReview(int user_no, int review_no) {
	ModelAndView mav =new ModelAndView();
	ReviewVo vo =new ReviewVo();
	mav.setViewName("reviewModifyWrite");
	int result = reviewService.modifyReview(vo);
	System.out.println("����������ΰ��°� �׽�Ʈ");
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



