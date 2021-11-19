package blueup.user.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.paging.Criteria;
import blueup.user.vo.QnaVo;
import blueup.user.vo.Terms_and_conditionVo;
import blueup.user.vo.UsersVo;

@Repository
public class QnaDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public UsersVo selectUserInfoForQnaDao(int user_no) {
		return sqlSessionTemplate.selectOne("qnaDao.selectUserInfoForQna", user_no);
	}
	
	
	public void wrtieQnaProcDao(QnaVo vo) {
		sqlSessionTemplate.insert("qnaDao.wrtieQnaProc", vo);
	}
	
	public List<QnaVo> getQnaListDao(Map<String, Object> map) {
		return sqlSessionTemplate.selectList("qnaDao.getQnaList", map);
	}
	
	public int getCountDao(int user_no) {
		return sqlSessionTemplate.selectOne("qnaDao.getCount", user_no);
	}
	
	public QnaVo getContnetDao(int qna_no) {
		return sqlSessionTemplate.selectOne("qnaDao.getContnet", qna_no);
	}
	
	public void deleteQnaDao(int qna_no) {
		sqlSessionTemplate.delete("qnaDao.deleteQna",qna_no);
	}
	
	public void modifyQnaDao(Map<String, Object> map) {
		sqlSessionTemplate.update("qnaDao.modifyQna", map);
	}
	/*public List<QnaVo> getQnaListInDao(Criteria cri) {
		System.out.println("QnaDAOÀÇ getQnaList ¹ßµ¿!");
		return sqlSessionTemplate.selectList("qnaDao.getQnaList", cri);
	}

	public int getCountInDao() {
		return sqlSessionTemplate.selectOne("qnaDao.getCount");
	}
	
	public void insertQnaDao(QnaVo vo) {
		sqlSessionTemplate.insert("qnaDao.insertQna", vo);
	}
	
	public QnaVo getQnaContentDao(int qnaNo) {
		return sqlSessionTemplate.selectOne("qnaDao.getQnaContent", qnaNo);
	}
	
	public void qnaUpdateDao(QnaVo vo) {
		sqlSessionTemplate.update("qnaDao.qnaUpdate", vo);
	}
	
	public void addCntDao(QnaVo vo) {
		sqlSessionTemplate.update("qnaDao.addCnt",vo);
	}
	
	public void deleteQna(QnaVo vo) {
		sqlSessionTemplate.delete("qnaDao.deleteQna", vo);
	}*/
}
