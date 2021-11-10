package blueup.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.NoticeServiceImpl;
import blueup.user.vo.NoticeVo;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl noticeserviceimpl;
	
	// �������� ����Ʈ ��������
	@RequestMapping("/getNoticeList.do")
	public ModelAndView getNoticeList(NoticeVo vo, ModelAndView mav) {
		mav.addObject("noticeList", noticeserviceimpl.getnoticeList(vo));
		mav.setViewName("nscenter");
		return mav;
	}
	
	// �������� ���� �� ��ȸ�� update
	@RequestMapping("/updateNoticeCnt.do")
	public ModelAndView updateNoticeCnt(NoticeVo vo) {
		System.out.println("cnt");
		ModelAndView mav = new ModelAndView();
		noticeserviceimpl.updateNoticeCnt(vo);
		mav.setViewName("getNoticeList.do");
		return mav;
	}
	
	// ������ ���������� ��ȸ���� ��������
	@RequestMapping("/getNoticeCnt.do")
	public ModelAndView getNoticeCnt(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("cnt", getNoticeCnt(vo));
		mav.setViewName("cscenter");
		return mav;
	}
	
	// �������� �����ϱ�
	@RequestMapping("/insertNotice.do")
	public ModelAndView insertNotice(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.insertNotice(vo));
		mav.setViewName("redirect:nscenter.jsp");
		return mav;
	}
	
	//�������� �����ϱ�
	@RequestMapping("/deleteNotice.do")
	public ModelAndView deleteNotice(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.deleteNotice(vo));
		mav.setViewName("redirect:nscenter.jsp");
		return mav;
	}
	
	// �������� �����ϱ�
	@RequestMapping("/updateNotice.do")
	public ModelAndView updateNotice(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.updateNotice(vo));
		mav.setViewName("getNoticeList.do");
		return mav;
	}
	// �������� �����ؼ� ��ȸ
	@RequestMapping("/getnoticeone.do")
	public ModelAndView getselectNoticeCnt(NoticeVo vo, ModelAndView mav) {
		mav.addObject("getnoticeone", noticeserviceimpl.getnoticeone(vo));
		NoticeVo test = noticeserviceimpl.getnoticeone(vo);
		System.out.println(test.getNotice_title());
		mav.setViewName("gongjidetail");
		return mav;
	}
	
}

	