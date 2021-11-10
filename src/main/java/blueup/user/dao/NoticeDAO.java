package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.NoticeVo;
import blueup.user.vo.WishListVo;

@Repository
public class NoticeDAO {
	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public int insertNotice(NoticeVo vo) {
		return sqlSssionTemplate.insert("noticeDao.insertNotice", vo);
	}
	
	public int deleteNotice(NoticeVo vo) {
		return sqlSssionTemplate.delete("noticeDao.deleteNotice", vo);
	}
	
	public int updateNotice(NoticeVo vo) {
		return sqlSssionTemplate.update("noticeDao.updateNotice", vo);
	}
	
	public void updateNoticeCnt(NoticeVo vo) {
		sqlSssionTemplate.update("noticeDao.updateNoticeCnt", vo);
	}
	
	public List<NoticeVo> getnoticeList(NoticeVo vo) {
		return sqlSssionTemplate.selectList("noticeDao.getnoticeList", vo);
	}
	
	public String getnoticeCnt(NoticeVo vo) {
		return sqlSssionTemplate.selectOne("noticeDao.getNoticeCnt", vo);
	}
	
	public NoticeVo getnoticeone(NoticeVo vo) {
		return sqlSssionTemplate.selectOne("noticeDao.getnoticeone", vo);
	}
}
