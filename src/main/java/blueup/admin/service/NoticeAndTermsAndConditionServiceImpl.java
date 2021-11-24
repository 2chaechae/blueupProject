package blueup.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.NoticeAndTermsAndConditionDAO;
import blueup.admin.vo.NoticeVo;
import blueup.admin.vo.Terms_and_conditionVo;
import blueup.user.paging.Criteria;

@Service("ntcService")
public class NoticeAndTermsAndConditionServiceImpl implements NoticeAndTermsAndConditionService {
	
	@Autowired
	NoticeAndTermsAndConditionDAO dao;
	
	@Override
	public List<NoticeVo> getNoticeListService(Criteria cri) {
		return dao.getNoticeListDao(cri);
	}

	@Override
	public Integer getNoticeCntService() {
		return dao.getNoticeCntDao();
	}

	@Override
	public List<Terms_and_conditionVo> getTermsAndConditionService(Criteria cri) {
		return dao.getTermsAndConditionDao(cri);
	}

	@Override
	public Integer getTermsCntService() {
		return dao.getTermsCntDao();
	}

	@Override
	public void writeNoticeProcService(NoticeVo vo) {
		dao.writeNoticeProcDao(vo);
	}

	@Override
	public NoticeVo getNoticeContentService(int no) {
		return dao.getNoticeContentDao(no);
	}

	@Override
	public void deleteNoticeService(int no) {
		dao.deleteNoticeDao(no);
	}

	@Override
	public void modifyNoticeService(NoticeVo vo) {
		dao.modifyNoticeDao(vo);
	}

	@Override
	public void writeTermsService(Terms_and_conditionVo vo) {
		dao.writeTermsDao(vo);
	}

	@Override
	public Terms_and_conditionVo getTermsService(int terms_no) {
		return dao.getTermsDao(terms_no);
	}

	@Override
	public void deleteTermsService(int terms_no) {
		dao.deleteTermsDao(terms_no);
	}

	@Override
	public void modifyTermsService(Terms_and_conditionVo vo) {
		dao.modifyTermsDao(vo);
	}
	
	
	
	
	
	
	
	

}
