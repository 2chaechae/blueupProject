package blueup.user.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import blueup.common.awsS3.AwsS3;
import blueup.user.service.ReviewService;
import blueup.user.vo.ReviewVo;
import blueup.user.vo.Review_photoVo;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	public AwsS3 awsS3 = AwsS3.getInstance();

	// ���� ������ ���� ��
	@RequestMapping("/getProductInfoForReview.do")
	public ModelAndView getProductInfoForReview(HttpSession session, ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		System.out.println(vo.getOrder_detail_no());
		System.out.println(vo.getUser_no());
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
	public ModelAndView insertReview(ReviewVo vo, @RequestParam(value="product_no") String product_no) {

		ModelAndView mav = new ModelAndView();
		List<MultipartFile> file = vo.getReviewImage();
		vo.setProduct_no(Integer.parseInt(product_no));
		ReviewVo rvo = insertPhoto(file, vo);
		
		vo.setReview_status(true);
		int result = reviewService.insertReview(rvo);
		if(result==1) {
			int review_no = reviewService.getReviewNo();
			rvo.setReview_no(review_no);
			int result3 = reviewService.insertPhoto(rvo);
			System.out.println("insert����" + result3);
		}
		
		/* ���� ���̺� ���� ���� + �Ķ���ʹ� REVIEWVO�� �޾ƾ���*/
		mav.addObject("getReviewList", reviewService.getReviewList(vo));
		mav.setViewName("reviewView");
		
		return mav;

	}
	
	//���� ���� ���ε� �� ��� ����
	public ReviewVo insertPhoto(List<MultipartFile> imageList, ReviewVo vo ) {
		
		String uploadFolder = "https://blueup.s3.ap-northeast-2.amazonaws.com/";
		List<String> tmp = new ArrayList<String>();
		try {
			if(imageList != null) {
				for(int i=0; i < imageList.size(); i++) {
					if(imageList.get(i).getOriginalFilename() !="") { 
						String key  ="review/" + vo.getReview_no() + "/" + imageList.get(i).getOriginalFilename();
						InputStream is = imageList.get(i).getInputStream();
						String contentType = imageList.get(i).getContentType();
						long contentLength = imageList.get(i).getSize();
						awsS3.upload(is, key , contentType, contentLength); //s3 �ø��� 
						System.out.println("�������� ���ε� ����");
						tmp.add(uploadFolder+key);
					}
				}
					for(int i=0; i < tmp.size(); i++) {
						if( i == 0) {
							vo.setPhoto1(tmp.get(0));
						}else if(i == 1) {
							vo.setPhoto2(tmp.get(1));
						}else if(i == 2) {
							vo.setPhoto3(tmp.get(2));
						}else if(i == 3) {
							vo.setPhoto4(tmp.get(3));
						}else if(i == 4) {
							vo.setPhoto5(tmp.get(4));
							
						}
					}
				}
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	
	
	
	//@RequestMapping("/insertReview.do")
	//@ResponseBody
	//public int insertReview(

		//	int order_no, /* int product_no, */ /* ReviewVo, vo.set �ٽ� int�� */
		//	String star, String title, String content, String user_id, String product_name, String product_size,
		//	Date review_time, String product_color, Boolean review_status, int user_no) {
	//	System.out.println(1);
	//	ModelAndView mav = new ModelAndView();
	//	ReviewVo vo = new ReviewVo();
	//	vo.setProduct_name(product_name);
	//	vo.setProduct_size(product_size);
	//	System.out.println(5);
	//	vo.setStar(Integer.parseInt(star));
	//	vo.setReview_title(title);
	//		vo.setReview_content(content);
	//	vo.setUser_id(user_id);
	//	vo.setReview_time(review_time);
	//	vo.setProduct_color(product_color);
	//	vo.setUser_no(user_no);
	//	vo.setOrder_no(order_no);
	//	/* vo.setProduct_no(product_no); */
	//	vo.setReview_status(true);
	//	int result = reviewService.insertReview(vo);
	//	return result;

	//}
	
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
//�����ϴ� ��
	@RequestMapping("/modifyReview.do")
	public ModelAndView modifyReview(HttpSession session, ReviewVo vo) {
		ModelAndView mav = new ModelAndView();
		ReviewVo reviewModifyWrite = reviewService.modifyReview(vo);
		System.out.println("���� �ȴٱ� ��");
		mav.addObject("modifyReview", reviewModifyWrite);
		mav.setViewName("reviewModifyWrite");
		return mav;
	}
	
//modify ����
	@RequestMapping("/modifyupdateReview.do")
	@ResponseBody
	public int modifyupdateReview(HttpSession session,String review_content, 
												String review_title, int star, 
												Date review_time, int user_no, int review_no) {
		System.out.println(1);
		ModelAndView mav = new ModelAndView();
		ReviewVo vo = new ReviewVo();
		vo.setReview_content(review_content);
		vo.setReview_title(review_title);
		vo.setStar(star);
		vo.setUser_no(user_no);
		vo.setReview_no(review_no); 
		System.out.println("�����Ǿ����ϴ�");
		int result = reviewService.modifyupdateReview(vo);
		mav.setViewName("reviewView"); //�Ѱ��ִ� ��ġ
		return result;
	}
	
	

	
	
	}



