package blueup.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PointController {
	
	@RequestMapping("/point.do")
	public ModelAndView point(HttpServletRequest request) {
		/*
		 * HttpSession session = request.getSession(); String user_id = (String)
		 * session.getAttribute("user_id"); String user_no = (String)
		 * session.getAttribute("user_no");
		 */
		ModelAndView mav = new ModelAndView();
		//��� ���� ����Ʈ
		// �Ҹ� ���� ����Ʈ
		
		mav.setViewName("point");
		return mav;
	}
}
