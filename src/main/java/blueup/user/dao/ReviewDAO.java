package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.QnaVo;
import blueup.user.vo.ReviewVo;
@Repository
public class ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	/* ∏Æ∫‰ ªË¡¶ */
	public int deleteReview(ReviewVo vo) {
		return sqlSessionTemplate.delete("reviewDao.deleteReview", vo);
		
	}

	/* ∏Æ∫‰ ¿€º∫ */
	public int insertReview(ReviewVo vo) {
		return sqlSessionTemplate.insert("reviewDao.insertReview", vo);
	}


	
	/* ∏Æ∫‰ ¡∂»∏ */
	public List<ReviewVo>  getReviewList(ReviewVo vo) {
		return sqlSessionTemplate.selectList("reviewDao.getReviewList" , vo);
	}
	
	/* ªÛ«∞ ¡∂»∏ */
	public ReviewVo getProductInfoForReview(ReviewVo vo) {
		return sqlSessionTemplate.selectOne("reviewDao.getProductInfoForReview", vo);
	}

	public List<ReviewVo> getReviewproductList(ReviewVo vo) {
		return sqlSessionTemplate.selectList("reviewDao.getReviewproductList" , vo);
	}

	public ReviewVo modifyReview(ReviewVo vo) {
		return sqlSessionTemplate.selectOne("reviewDao.modifyReview" , vo);
	}
	
}

	
