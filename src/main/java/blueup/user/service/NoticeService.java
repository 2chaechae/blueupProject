package blueup.user.service;

import java.util.List;

import blueup.user.vo.NoticeVo;

public interface NoticeService {
	public int insertNotice(NoticeVo vo);
	public int updateNotice(NoticeVo vo);
	public int deleteNotice(NoticeVo vo);
	public void updateNoticeCnt(NoticeVo vo);
	public List<NoticeVo> getnoticeList(NoticeVo vo);
	public String getNoticeCnt(NoticeVo vo);
	public NoticeVo getnoticeone(NoticeVo vo);
}
