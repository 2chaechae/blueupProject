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

	/* ���� ���� */
	public int deleteReview(ReviewVo vo) {
		return sqlSessionTemplate.delete("reviewDao.deleteReview", vo);
		
	}

	/* ���� �ۼ� */
	public int insertReview(ReviewVo vo) {
		return sqlSessionTemplate.insert("reviewDao.insertReview", vo);
	}


	
	/* ���� ��ȸ */
	public List<ReviewVo>  getReviewList(ReviewVo vo) {
		return sqlSessionTemplate.selectList("reviewDao.getReviewList" , vo);
	}
	
	/* ��ǰ ��ȸ */
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

	
