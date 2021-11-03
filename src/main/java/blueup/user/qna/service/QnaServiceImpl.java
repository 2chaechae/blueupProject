package blueup.user.qna.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.main.vo.QnaVo;
import blueup.user.qna.dao.QnaDAO;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {
	@Autowired
	private QnaDAO qnaDAO;
	
	@Override
	public List<QnaVo> getQnaListTen() {
		return qnaDAO.getQnaListLimitTen();
	}

}
