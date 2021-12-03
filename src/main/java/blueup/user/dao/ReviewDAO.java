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
	
	/* ���� ���� �� */
	public ReviewVo getProductInfoForReview(ReviewVo vo) {
		return sqlSessionTemplate.selectOne("reviewDao.getProductInfoForReview", vo);
	}
    
	/* ���信 ����ֱ� */
	public int insertPhoto(ReviewVo vo) { 
		return sqlSessionTemplate.insert("reviewDao.insertPhoto", vo);
	}
	
	
	
	public List<ReviewVo> getReviewproductList(ReviewVo vo) {
		return sqlSessionTemplate.selectList("reviewDao.getReviewproductList" , vo);
	}
	/* ���� ���� �� */
	public ReviewVo getReviewListForReview(ReviewVo vo) {
		return sqlSessionTemplate.selectOne("reviewDao.getReviewListForReview", vo);
	}
	/* ���� ���� �� */
	public ReviewVo modifyReview(ReviewVo vo) {
		return sqlSessionTemplate.selectOne("reviewDao.modifyReview", vo);
	}
	/* ���� ���� ���� */
	public int modifyupdateReview(ReviewVo vo) {
		return sqlSessionTemplate.update("reviewDao.modifyupdateReview", vo);
	}
	//���� ��ȣ ��ȸ (max)
	public int getReviewNo() {
		return sqlSessionTemplate.selectOne("reviewDao.getReviewNo");
	}
	
}

	
