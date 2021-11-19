package blueup.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.QnaDAO;
import blueup.user.paging.Criteria;
import blueup.user.vo.QnaVo;
import blueup.user.vo.UsersVo;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {
	@Autowired
	private QnaDAO qnaDAO;

	@Override
	public UsersVo selectUserInfoForQnaService(int user_no) {
		return qnaDAO.selectUserInfoForQnaDao(user_no);
	}

	@Override
	public void wrtieQnaProcService(QnaVo vo) {
		qnaDAO.wrtieQnaProcDao(vo);
	}

	@Override
	public List<QnaVo> getQnaListService(Map<String, Object> map) {
		return qnaDAO.getQnaListDao(map);
	}

	@Override
	public int getCountService(int user_no) {
		return qnaDAO.getCountDao(user_no);
	}

	@Override
	public QnaVo getContnetService(int qna_no) {
		return qnaDAO.getContnetDao(qna_no);
	}

	@Override
	public void deleteQnaService(int qna_no) {
		qnaDAO.deleteQnaDao(qna_no);
	}

	@Override
	public void modifyQnaService(Map<String, Object> map) {
		qnaDAO.modifyQnaDao(map);
	}
	
	
	
	
	
	
	/*@Override
	public List<QnaVo> getQnaListInService(Criteria cri) {
		return qnaDAO.getQnaListInDao(cri);
	}

	@Override
	public int getCountInService() {
		return qnaDAO.getCountInDao();
	}

	@Override
	public void insertQnaService(QnaVo vo) {
		qnaDAO.insertQnaDao(vo);
	}

	@Override
	public QnaVo getQnaContentService(int qnaNo) {
		return qnaDAO.getQnaContentDao(qnaNo);
	}

	@Override
	public void qnaUpdateService(QnaVo vo) {
		qnaDAO.qnaUpdateDao(vo);
	}

	@Override
	public void addCntService(QnaVo vo) {
		qnaDAO.addCntDao(vo);
	}

	@Override
	public void deleteQna(QnaVo vo) {
		qnaDAO.deleteQna(vo);
	}
	*/
	
}
