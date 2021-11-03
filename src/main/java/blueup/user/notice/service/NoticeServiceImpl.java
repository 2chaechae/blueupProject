package blueup.user.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.notice.dao.NoticeDAO;
import blueup.user.notice.vo.NoticeVo;

@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeDAO noticedao;
	
	@Override
	public int insertNotice(NoticeVo vo) {
		return noticedao.insertNotice(vo);
	}

	@Override
	public int updateNotice(NoticeVo vo) {
		return noticedao.updateNotice(vo);
	}

	@Override
	public int deleteNotice(NoticeVo vo) {
		return noticedao.deleteNotice(vo);
	}

	@Override
	public List<NoticeVo> getnoticeList(NoticeVo vo) {
		return noticedao.getnoticeList(vo);
	}

}
