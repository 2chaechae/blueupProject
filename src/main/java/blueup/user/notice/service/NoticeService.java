package blueup.user.notice.service;

import java.util.List;

import blueup.user.notice.vo.NoticeVo;

public interface NoticeService {
	public int insertNotice(NoticeVo vo);
	public int updateNotice(NoticeVo vo);
	public int deleteNotice(NoticeVo vo);
	public List<NoticeVo> getnoticeList(NoticeVo vo);
}
