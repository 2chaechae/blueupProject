package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.paging.Criteria;
import blueup.user.vo.QnaVo;
import blueup.user.vo.Terms_and_conditionVo;

@Repository
public class QnaDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<QnaVo> getQnaListInDao(Criteria cri) {
		System.out.println("QnaDAOÀÇ getQnaList ¹ßµ¿!");
		return sqlSessionTemplate.selectList("qnaDao.getQnaList", cri);
	}

	public int getCountInDao() {
		return sqlSessionTemplate.selectOne("qnaDao.getCount");
	}
	
	public void insertQnaDao(QnaVo vo) {
		sqlSessionTemplate.insert("qnaDao.insertQna", vo);
	}
}
