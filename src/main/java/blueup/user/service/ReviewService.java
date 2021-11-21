package blueup.user.service;

import java.util.List;

import blueup.user.vo.ReviewVo;

public interface ReviewService {
		public int deleteReview(ReviewVo vo);
		public void insertReview(ReviewVo vo); 
		public void updateReview(ReviewVo vo);
		public List<ReviewVo> getReviewList (ReviewVo vo);
		public ReviewVo getProductInfoForReview(ReviewVo vo);
		public List<ReviewVo> getReviewproductList(ReviewVo vo);
			
		}
		