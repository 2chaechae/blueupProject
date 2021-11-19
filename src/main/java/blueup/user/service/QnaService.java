package blueup.user.service;

import java.util.List;
import java.util.Map;

import blueup.user.paging.Criteria;
import blueup.user.vo.QnaVo;
import blueup.user.vo.UsersVo;

public interface QnaService {
	public UsersVo selectUserInfoForQnaService(int user_no);
	
	public void wrtieQnaProcService(QnaVo vo);
	
	public List<QnaVo> getQnaListService(Map<String, Object> map);
	
	public int getCountService(int user_no);
	
	public QnaVo getContnetService(int qna_no);
	
	public void deleteQnaService(int qna_no);
	
	public void modifyQnaService(Map<String, Object> map);
	
	/*public List<QnaVo> getQnaListInService(Criteria cri);
	
	public int getCountInService();
	
	public void insertQnaService(QnaVo vo);
	
	public QnaVo getQnaContentService(int qnaNo);
	
	public void qnaUpdateService(QnaVo vo);
	
	public void addCntService(QnaVo vo);
	
	public void deleteQna(QnaVo vo);*/
}
