package blueup.user.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.paging.Criteria;
import blueup.user.paging.PageMaker;
import blueup.user.service.QnaService;
import blueup.user.vo.QnaVo;

@Controller
public class QnaControllerYuris {
	@Autowired 
	@Qualifier("qnaService")
	private QnaService qnaService;

	/*@RequestMapping("/qna.do")
	public ModelAndView getQnaInController(@RequestParam("pageNum") int pageNum) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		Criteria cri = new Criteria();
		cri.setPage(pageNum);
		cri.setPageStart();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(qnaService.getCountInService()); //총계수
		
		List<QnaVo> list = qnaService.getQnaListInService(cri);
		mav.addObject("pageNum", pageNum);
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
	public ModelAndView qnaWriteFormController(HttpSession session, @RequestParam(required=false, value="qna_no") int qna_no, @RequestParam(required=false, value="pageNum") int pageNum) {
		//session.getAttribute("") 원래는 여기서 세션의 아이디를 얻어와야하지만, 어쩔수없으니..
		
		ModelAndView mav = new ModelAndView();
		if(qna_no>0) {
			QnaVo content = qnaService.getQnaContentService(qna_no);
			System.out.println("가져온 내용 : "+content.getQna_title());
			mav.addObject("content", content);
		}
		mav.setViewName("qnaWriteForm");
		//session대신 임시로 addobejct해서 사용
		mav.addObject("qna_no", qna_no);
		mav.addObject("writer", "래리캉");
		mav.addObject("pageNum", pageNum);
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
	
	@RequestMapping("getnaContent.do")
	public ModelAndView getQnaContent(@RequestParam("qna_no") int qnaNo, @RequestParam("pageNum") int pageNum) {
		QnaVo vo = new QnaVo();
		vo.setQna_no(qnaNo);
		System.out.println("넘어온 값 : "+qnaNo);
		ModelAndView mav = new ModelAndView();
		QnaVo content = qnaService.getQnaContentService(qnaNo);
		qnaService.addCntService(vo);
		mav.addObject("pageNum", pageNum);
		mav.addObject("content", content);
		mav.addObject("qna_no", qnaNo);
		mav.setViewName("getQnaContent");
		return mav;
	}
	
	@RequestMapping("qnaUpdate.do")
	public ModelAndView qnaUpdate(@RequestParam("qna_no")int qna_no, @RequestParam("pageNum") int pageNum) {
		ModelAndView mav = new ModelAndView();
		QnaVo content = qnaService.getQnaContentService(qna_no);
		mav.addObject("content", content);
		mav.addObject("qna_no", qna_no);
		mav.setViewName("redirect:/qnaWriteForm.do?qna_no="+qna_no+"&pageNum="+pageNum);
		return mav;
	}
	
	@RequestMapping("qnaUpdateProc.do")
	public ModelAndView qnaUpdateProc(
			@RequestParam("qna_no")int qna_no,
			@RequestParam("title") String qna_title,
			@RequestParam("type") String qna_type,
			@RequestParam("contents") String qna_content,
			@RequestParam("open") boolean secret,
			@RequestParam(required=false, value= "password")String password,
			@RequestParam("pageNum") int pageNum) {
		System.out.println("받아온 제목 값 : "+qna_title);
		QnaVo vo = new QnaVo();
		vo.setQna_no(qna_no);
		vo.setQna_type(qna_type);
		vo.setQna_content(qna_content);
		vo.setSecret(secret);
		vo.setPassword(password);
		vo.setQna_title(qna_title);
		System.out.println("vo객체에 담은 타이틀 : "+vo.getQna_title());
		ModelAndView mav = new ModelAndView();
		qnaService.qnaUpdateService(vo);
		QnaVo modifiedQnaVo = qnaService.getQnaContentService(qna_no);
		System.out.println("수정 제목 : "+modifiedQnaVo.getQna_title());
		mav.addObject(modifiedQnaVo);
		mav.setViewName("redirect:/getQnaContent.do?qna_no="+qna_no+"&pageNum="+pageNum);
		return mav;
	}
	
	@RequestMapping("qnaDelete.do")
	public ModelAndView deleteQna(@RequestParam("qna_no") int qna_no) {
		ModelAndView mav = new ModelAndView();
		QnaVo vo = new QnaVo();
		vo.setQna_no(qna_no);
		qnaService.deleteQna(vo);
		mav.setViewName("redirect:/qna.do?pageNum=1");
		return mav;
	}
	*/

}
