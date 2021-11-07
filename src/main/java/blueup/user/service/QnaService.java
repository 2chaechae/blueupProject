package blueup.user.service;

import java.util.List;

import blueup.user.paging.Criteria;
import blueup.user.vo.QnaVo;

public interface QnaService {
	public List<QnaVo> getQnaListInService(Criteria cri);
	
	public int getCountInService();
	
	public void insertQnaService(QnaVo vo);
	
	public QnaVo getQnaContentService(int qnaNo);
	
	public void qnaUpdateService(QnaVo vo);
	
	public void addCntService(QnaVo vo);
	
	public void deleteQna(QnaVo vo);
}
