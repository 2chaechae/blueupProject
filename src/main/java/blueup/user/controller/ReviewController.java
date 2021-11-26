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

	



	// ���� ������ ���� ���� ��
	

		@RequestMapping("/modifyReview.do")
		@ResponseBody
		public ReviewVo modifyReview(int user_no, int review_no) {
			System.out.println("�߾߾ߤ���");
		ModelAndView mav =new ModelAndView();
		ReviewVo vo =new ReviewVo();
		mav.setViewName("reviewForm");
		vo.setUser_no(user_no);
		vo.setReview_no(review_no);
		System.out.println("����������ΰ��°� �׽�Ʈ");
		return vo;
		}

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
			
				System.out.println("��ǰ ���� ���");
				mav.addObject("getReviewproductList", reviewService.getReviewproductList(vo));
				mav.setViewName("reviewView");
				return mav;
			}

	// ���� �ۼ��� ���� ����Ʈ ȣ��
			@RequestMapping("/getReviewList.do")
			public ModelAndView getReviewList(HttpSession session, ReviewVo vo, ModelAndView mav) {
				System.out.println("��ǰ ���� ���");
				mav.addObject("getReviewList", reviewService.getReviewList(vo));
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


}