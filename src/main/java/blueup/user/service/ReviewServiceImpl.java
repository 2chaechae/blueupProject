package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.ReviewDAO;
import blueup.user.vo.QnaVo;
import blueup.user.vo.ReviewVo;

@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public int deleteReview(ReviewVo vo) {
		return reviewDAO.deleteReview(vo);
	}

	@Override
	public int insertReview(ReviewVo vo) {
		return reviewDAO.insertReview(vo);
	}

	@Override
	public void updateReview(ReviewVo vo) {
		reviewDAO.updateReview(vo);
	}
	

	@Override
	public List<ReviewVo> getReviewList(ReviewVo vo) {
		return reviewDAO.getReviewList(vo);
	}

	@Override
	public  ReviewVo getProductInfoForReview(ReviewVo vo) {
		return reviewDAO.getProductInfoForReview(vo);
	}

}
