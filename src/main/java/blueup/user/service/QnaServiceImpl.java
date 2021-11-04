package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.QnaDAO;
import blueup.user.vo.QnaVo;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {
	@Autowired
	private QnaDAO qnaDAO;
	
	@Override
	public List<QnaVo> getQnaListTen() {
		return qnaDAO.getQnaListLimitTen();
	}

}
