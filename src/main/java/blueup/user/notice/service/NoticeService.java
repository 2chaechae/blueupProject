package blueup.user.notice.service;

import java.util.List;

import blueup.user.main.vo.NoticeVo;

public interface NoticeService {
	public int insertNotice(NoticeVo vo);
	public int updateNotice(NoticeVo vo);
	public int deleteNotice(NoticeVo vo);
	public void updateNoticeCnt(NoticeVo vo);
	public List<NoticeVo> getnoticeList(NoticeVo vo);
}
