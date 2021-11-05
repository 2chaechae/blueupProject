package blueup.user.service;

import java.util.List;

import blueup.user.paging.Criteria;
import blueup.user.vo.QnaVo;

public interface QnaService {
	public List<QnaVo> getQnaListInService(Criteria cri);
	
	public int getCountInService();
	
	public void insertQnaService(QnaVo vo);
}
