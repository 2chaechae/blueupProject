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
		return sqlSessionTemplate.insert("reviewDao.insertCart", vo);
	}

	/* ���� ���� */
	public int updateReview(ReviewVo vo) {
		return sqlSessionTemplate.update("reviewDao.updateReview", vo);
	}
	/* ���� ��ȸ */
	public List<ReviewVo>  getReviewList(ReviewVo vo) {
		return sqlSessionTemplate.selectList("reviewDao.getReviewList" , vo);
	}
	
	
		
	}
	


	
