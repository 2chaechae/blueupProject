package blueup.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.NoticeVo;
import blueup.admin.vo.Terms_and_conditionVo;
import blueup.user.paging.Criteria;

@Repository
public class NoticeAndTermsAndConditionDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<NoticeVo> getNoticeListDao(Criteria cri){
		return sqlSessionTemplate.selectList("adminNoticeAndTermsAndCondition.getNotice", cri);
	}
	
	public Integer getNoticeCntDao() {
		return sqlSessionTemplate.selectOne("adminNoticeAndTermsAndCondition.getNoticeCnt");
	}
	
	public List<Terms_and_conditionVo> getTermsAndConditionDao(Criteria cri){
		return sqlSessionTemplate.selectList("adminNoticeAndTermsAndCondition.getTermsAndCondition", cri);
	}
	
	public Integer getTermsCntDao() {
		return sqlSessionTemplate.selectOne("adminNoticeAndTermsAndCondition.getTermsCnt");
	}
	
	public void writeNoticeProcDao(NoticeVo vo) {
		sqlSessionTemplate.insert("adminNoticeAndTermsAndCondition.writeNoticeProc", vo);
	}
	
	public NoticeVo getNoticeContentDao(int no) {
		return sqlSessionTemplate.selectOne("adminNoticeAndTermsAndCondition.getNoticeContent", no);
	}
	
	public void deleteNoticeDao(int no) {
		sqlSessionTemplate.delete("adminNoticeAndTermsAndCondition.deleteNotice", no);
	}
	
	public void modifyNoticeDao(NoticeVo vo) {
		sqlSessionTemplate.update("adminNoticeAndTermsAndCondition.modifyNotice", vo);
	}
	
	public Integer getNoticeCountDao() {
		return sqlSessionTemplate.selectOne("adminNoticeAndTermsAndCondition.getNoticeCount");
	}
	
	public void writeTermsDao(Terms_and_conditionVo vo) {
		sqlSessionTemplate.insert("adminNoticeAndTermsAndCondition.writeTerms", vo);
	}
	
	public Terms_and_conditionVo getTermsDao(int terms_no) {
		return sqlSessionTemplate.selectOne("adminNoticeAndTermsAndCondition.getTermsContent", terms_no);
	}
	
	public void deleteTermsDao(int terms_no) {
		sqlSessionTemplate.delete("adminNoticeAndTermsAndCondition.deleteTerms", terms_no);
	}
	
	public void modifyTermsDao(Terms_and_conditionVo vo) {
		sqlSessionTemplate.update("adminNoticeAndTermsAndCondition.modifyTerms", vo);
	}
}
