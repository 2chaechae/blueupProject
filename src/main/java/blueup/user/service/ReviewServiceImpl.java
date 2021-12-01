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
	public int getReviewNo() {
		return reviewDAO.getReviewNo();
	}

	@Override
	public List<ReviewVo> getReviewList(ReviewVo vo) {
		return reviewDAO.getReviewList(vo);
	}

	@Override
	public  ReviewVo getProductInfoForReview(ReviewVo vo) {
		return reviewDAO.getProductInfoForReview(vo);
	}

	@Override
	public List<ReviewVo> getReviewproductList(ReviewVo vo) {
		return reviewDAO.getReviewproductList(vo);
	}

	@Override
	public ReviewVo getReviewListForReview(ReviewVo vo) {
		return reviewDAO.getReviewListForReview(vo);
	}

	@Override
	public ReviewVo modifyReview(ReviewVo vo) {
		return reviewDAO.modifyReview(vo);
	}
	@Override
	public int modifyupdateReview(ReviewVo vo) {
		return reviewDAO.modifyupdateReview(vo);
	}

	@Override
	public int insertPhoto(ReviewVo vo) {
		return reviewDAO.insertPhoto(vo);
	}



}
