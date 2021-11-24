package blueup.admin.service;

import java.util.List;
import java.util.Map;

import blueup.admin.vo.NoticeVo;
import blueup.admin.vo.Terms_and_conditionVo;
import blueup.user.paging.Criteria;

public interface NoticeAndTermsAndConditionService {
	public List<NoticeVo> getNoticeListService(Criteria cri);
	
	public Integer getNoticeCntService();
	
	public List<Terms_and_conditionVo> getTermsAndConditionService(Criteria cri);
	
	public Integer getTermsCntService();
	
	public void writeNoticeProcService(NoticeVo vo);
	
	public NoticeVo getNoticeContentService(int no);
	
	public void deleteNoticeService(int no);
	
	public void modifyNoticeService(NoticeVo vo);
	
	public void writeTermsService(Terms_and_conditionVo vo);
	
	public Terms_and_conditionVo getTermsService(int terms_no);
	
	public void deleteTermsService(int terms_no);
	
	public void modifyTermsService(Terms_and_conditionVo vo);
}
