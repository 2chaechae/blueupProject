package blueup.user.service;

import java.util.List;

import blueup.user.vo.ReviewVo;

public interface ReviewService {
		public int deleteReview(ReviewVo vo);
		public int insertReview(ReviewVo vo);
		public int updateReview(ReviewVo vo);
		
		public List<ReviewVo> getReviewList (ReviewVo vo);
			
		}
		
