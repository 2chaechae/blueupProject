package blueup.user.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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

@Controller
public class QnaController {
	@Autowired 
	@Qualifier("qnaService")
	private QnaService qnaService;

	@RequestMapping("/qna.do")
	public ModelAndView getQnaInController(@RequestParam("pageNum") int pageNum) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		Criteria cri = new Criteria();
		cri.setPage(pageNum);
		cri.setPageStart();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(qnaService.getCountInService());
		
		List<QnaVo> list = qnaService.getQnaListInService(cri);
		mav.addObject("list", list);
		for(QnaVo vo:list) {
			System.out.println(vo.toString());
			vo.getQna_no();
			vo.getQna_content();
			vo.getQna_title();
		}
		mav.addObject("pageMaker", pageMaker);
		mav.setViewName("qna");
		return mav;
	}
	
	@RequestMapping("qnaWriteForm.do")
	public ModelAndView qnaWriteFormController(HttpSession session) {
		//session.getAttribute("") 원래는 여기서 세션의 아이디를 얻어와야하지만, 어쩔수없으니..
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("qnaWriteForm");
		//session대신 임시로 addobejct해서 사용
		mav.addObject("writer", "래리캉");
		return mav;
	}
	
	@RequestMapping("qnaWriteProc.do")
	public ModelAndView qnaWriteProc(
			@RequestParam("pageNum") int pageNum, 
			@RequestParam(value = "writer")String writer, 			
			@RequestParam("contents")String contents, 
			@RequestParam(required = false, value="password")String password, 
			@RequestParam("open")String open,
			@RequestParam("type")String type,
			@RequestParam("title")String title) {
		boolean secret;
		ModelAndView mav = new ModelAndView();
		QnaVo vo = new QnaVo();
		vo.setQna_type(type);
		vo.setUser_id(writer);
		vo.setQna_content(contents);
		vo.setPassword(password);
		vo.setQna_title(title);
		secret = Boolean.valueOf(open);
		vo.setSecret(secret);
		qnaService.insertQnaService(vo);
		mav.setViewName("redirect:/qna.do?pageNum="+pageNum);
		return mav;
	}
}
