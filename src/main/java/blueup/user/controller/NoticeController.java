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
	
	// 공지사항 리스트 가져오기
	@RequestMapping("/getNoticeList.do")
	public ModelAndView getNoticeList(NoticeVo vo, ModelAndView mav) {
		mav.addObject("noticeList", noticeserviceimpl.getnoticeList(vo));
		mav.setViewName("nscenter");
		return mav;
	}
	
	// 공지사항 선택 시 조회수 update
	@RequestMapping("/updateNoticeCnt.do")
	public ModelAndView updateNoticeCnt(NoticeVo vo) {
		System.out.println("cnt");
		ModelAndView mav = new ModelAndView();
		noticeserviceimpl.updateNoticeCnt(vo);
		mav.setViewName("getNoticeList.do");
		return mav;
	}
	
	// 선택한 공지사항의 조회수만 가져오기
	@RequestMapping("/getNoticeCnt.do")
	public ModelAndView getNoticeCnt(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("cnt", getNoticeCnt(vo));
		mav.setViewName("cscenter");
		return mav;
	}
	
	// 공지사항 삽입하기
	@RequestMapping("/insertNotice.do")
	public ModelAndView insertNotice(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.insertNotice(vo));
		mav.setViewName("redirect:nscenter.jsp");
		return mav;
	}
	
	//공지사항 삭제하기
	@RequestMapping("/deleteNotice.do")
	public ModelAndView deleteNotice(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.deleteNotice(vo));
		mav.setViewName("redirect:nscenter.jsp");
		return mav;
	}
	
	// 공지사항 수정하기
	@RequestMapping("/updateNotice.do")
	public ModelAndView updateNotice(NoticeVo vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("NoticeVo", noticeserviceimpl.updateNotice(vo));
		mav.setViewName("getNoticeList.do");
		return mav;
	}
	// 공지사항 선택해서 조회
	@RequestMapping("/getnoticeone.do")
	public ModelAndView getselectNoticeCnt(NoticeVo vo, ModelAndView mav) {
		mav.addObject("getnoticeone", noticeserviceimpl.getnoticeone(vo));
		NoticeVo test = noticeserviceimpl.getnoticeone(vo);
		System.out.println(test.getNotice_title());
		mav.setViewName("gongjidetail");
		return mav;
	}
	
}

	