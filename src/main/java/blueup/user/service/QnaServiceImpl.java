package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.QnaDAO;
import blueup.user.paging.Criteria;
import blueup.user.vo.QnaVo;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {
	@Autowired
	private QnaDAO qnaDAO;
	
	@Override
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
	
	
}
