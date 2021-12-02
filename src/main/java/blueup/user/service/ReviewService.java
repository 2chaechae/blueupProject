package blueup.user.service;

import java.util.List;

import blueup.user.vo.ReviewVo;

public interface ReviewService {
		public int deleteReview(ReviewVo vo);
		public int insertReview(ReviewVo vo); 
		public List<ReviewVo> getReviewList (ReviewVo vo);
		public ReviewVo getProductInfoForReview(ReviewVo vo);
		public List<ReviewVo> getReviewproductList(ReviewVo vo);
		public ReviewVo getReviewListForReview(ReviewVo vo);
		public ReviewVo modifyReview(ReviewVo vo);
		public int modifyupdateReview(ReviewVo vo);
		public int getReviewNo();
		public int insertPhoto(ReviewVo vo);
		}
		
