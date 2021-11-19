package blueup.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.paging.Criteria;
import blueup.user.paging.PageMaker;
import blueup.user.service.QnaService;
import blueup.user.vo.QnaVo;
import blueup.user.vo.UsersVo;

@Controller
public class QnaController {
	@Autowired
	@Qualifier("qnaService")
	QnaService service;
	
	@RequestMapping("/qnaList.do")
	public ModelAndView getQnaList(int pageNum, @RequestParam(required=false, value="user_no") int user_no) {
		ModelAndView mav = new ModelAndView();
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		Criteria cri = new Criteria();
		PageMaker pm = new PageMaker();
		
		int cnt = service.getCountService(user_no);
		System.out.println("qna °¹¼ö "+ cnt);
		cri.setPage(pageNum);
		cri.setPageStart();
		pm.setCri(cri);
		pm.setTotalCount(cnt);
		System.out.println("start Page : "+pm.getStartPage());
		System.out.println("End Page : "+pm.getEndPage());
		
		map.put("startRow", cri.getStartRow());
		map.put("perPageNum", cri.getPerPageNum());
		map.put("user_no", user_no);
		
		
		List<QnaVo> list =  service.getQnaListService(map);
		
		for(QnaVo vo : list) {
			System.out.println(vo.getQna_title());
		}		
		mav.addObject("user_no", user_no);
		mav.addObject("list", list);
		mav.addObject("cnt", cnt);
		mav.addObject("cri", cri);
		mav.addObject("pageMaker", pm);
		mav.setViewName("QnAlist");
		mav.addObject("pageNum", pageNum);
		return mav;
	}
	
	
	@RequestMapping("/qnaWrite.do")
	public ModelAndView writeQna(int pageNum, int user_no) {
		ModelAndView mav = new ModelAndView();

		UsersVo vo = service.selectUserInfoForQnaService(user_no);
		mav.addObject("user_no",user_no);
		mav.addObject("user", vo);
		mav.setViewName("QnA");
		return mav;
	}
	
	@RequestMapping("/qnaWriteProc.do")
	public ModelAndView wrtieQnaProc(
			String user_name,
			String email_id,
			String email_address,
			String phone1,
			String phone2,
			String phone3,
			String qna_type,
			String title,
			String content,
			String userNo
			) {
		ModelAndView mav = new ModelAndView();
		QnaVo vo = new QnaVo();
		vo.setUser_name(user_name);
		vo.setEmail_id(email_id);
		vo.setEmail_address(email_address);
		vo.setPhone1(phone1);
		vo.setPhone2(phone2);
		vo.setPhone3(phone3);
		vo.setQna_type(qna_type);
		vo.setQna_title(title);
		vo.setQna_content(content);
		vo.setUser_no(Integer.parseInt(userNo));
		service.wrtieQnaProcService(vo);
		
		mav.setViewName("redirect:/qnaList.do?pageNum=1&user_no=6");
		return mav;
	}
	
	@RequestMapping("/getQnAContent.do")
	public ModelAndView getQnaContent(int qna_no, int user_no) {
		ModelAndView mav = new ModelAndView();
		
		QnaVo vo = service.getContnetService(qna_no);
		
		mav.addObject("user_no", user_no);
		mav.addObject("vo", vo);
		mav.addObject("qna_no", qna_no);
		mav.setViewName("qnaContent");
		return mav;
	}
	
	
	@RequestMapping("/qnaDelete.do")
	public ModelAndView deleteQnA(int qna_no, int user_no) {
		ModelAndView mav = new ModelAndView();
		
		service.deleteQnaService(qna_no);
		
		mav.setViewName("redirect:/qnaList.do?pageNum=1&user_no="+user_no);
		return mav;
		
	}
	
	
	@RequestMapping("/modifyQna.do")
	public ModelAndView modifyQnA(int user_no, int qna_no) {
		ModelAndView mav = new ModelAndView();
		QnaVo vo = service.getContnetService(qna_no);
		mav.addObject("qna", vo);
		mav.addObject("user_no", user_no);
		mav.addObject("qna_no", qna_no);
		mav.setViewName("qnaModifyForm");
		return mav;
	}
	
	@RequestMapping("/qnaModifyProc.do")
	public ModelAndView Modifyproc(int qna_no, int user_no, String qna_title, String qna_content) {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("qna_title", qna_title);
		map.put("qna_content", qna_content);
		map.put("qna_no", qna_no);
		
		service.modifyQnaService(map);
		QnaVo vo = service.getContnetService(qna_no);
		
		mav.addObject("qna", vo);
		mav.addObject("qna_no", qna_no);
		mav.addObject("user_no", user_no);
		mav.setViewName("redirect:/getQnAContent.do?qna_no="+qna_no+"&user_no="+user_no);
		
		return mav;
	}
}
