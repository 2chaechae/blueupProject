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
		return sqlSessionTemplate.insert("reviewDao.insertCart", vo);
	}

	/* ∏Æ∫‰ ºˆ¡§ */
	public int updateReview(ReviewVo vo) {
		return sqlSessionTemplate.update("reviewDao.updateReview", vo);
	}
	/* ∏Æ∫‰ ¡∂»∏ */
	public List<ReviewVo>  getReviewList(ReviewVo vo) {
		return sqlSessionTemplate.selectList("reviewDao.getReviewList" , vo);
	}
	
	
		
	}
	


	
