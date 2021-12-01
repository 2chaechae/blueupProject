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

	/* ¸®ºä »èÁ¦ */
	public int deleteReview(ReviewVo vo) {
		return sqlSessionTemplate.delete("reviewDao.deleteReview", vo);
		
	}

	/* ¸®ºä ÀÛ¼º */
	public int insertReview(ReviewVo vo) {
		return sqlSessionTemplate.insert("reviewDao.insertReview", vo);
	}

	
	/* ¸®ºä Á¶È¸ */
	public List<ReviewVo>  getReviewList(ReviewVo vo) {
		return sqlSessionTemplate.selectList("reviewDao.getReviewList" , vo);
	}
	
	/* ¸®ºä ¾²±â Æû */
	public ReviewVo getProductInfoForReview(ReviewVo vo) {
		return sqlSessionTemplate.selectOne("reviewDao.getProductInfoForReview", vo);
	}
    
	/* ¸®ºä¿¡ Æ÷Åä³Ö±â */
	public int insertPhoto(ReviewVo vo) { 
		return sqlSessionTemplate.insert("reviewDao.insertPhoto", vo);
	}
	
	
	
	public List<ReviewVo> getReviewproductList(ReviewVo vo) {
		return sqlSessionTemplate.selectList("reviewDao.getReviewproductList" , vo);
	}
	/* ¸®ºä ¾²±â Æû */
	public ReviewVo getReviewListForReview(ReviewVo vo) {
		return sqlSessionTemplate.selectOne("reviewDao.getReviewListForReview", vo);
	}
	/* ¸®ºä ¼öÁ¤ Æû */
	public ReviewVo modifyReview(ReviewVo vo) {
		return sqlSessionTemplate.selectOne("reviewDao.modifyReview", vo);
	}
	/* ¸®ºä ¼öÁ¤ Àû¿ë */
	public int modifyupdateReview(ReviewVo vo) {
		return sqlSessionTemplate.update("reviewDao.modifyupdateReview", vo);
	}
	//¸®ºä ¹øÈ£ Á¶È¸ (max)
	public int getReviewNo() {
		return sqlSessionTemplate.selectOne("reviewDao.getReviewNo");
	}
	
}

	
