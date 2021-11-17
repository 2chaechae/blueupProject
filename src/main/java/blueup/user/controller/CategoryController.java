package blueup.user.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import blueup.user.service.CategoryServiceImpl;
import blueup.user.vo.Category_detailVo;

@Controller
public class CategoryController {
	
	@Autowired 
	private CategoryServiceImpl categoryserviceimpl;
	
	// 카테고리 목록 조회 (상위/하위 카테고리 매개변수)
	@RequestMapping("/getCategory.do")
	public ModelAndView getCategory(HttpSession session, Category_detailVo vo, @RequestParam(value="user_no", defaultValue="0") String user_no) {
		System.out.println("카테고리 이름 : " + vo.getCategory_name());
		System.out.println("하위 카테고리 이름 : " + vo.getDetailed_category_name());
		ModelAndView mav = new ModelAndView();
		System.out.println("카테 user_no : " + user_no);
		session.setAttribute("Category", categoryserviceimpl.getCategory(vo));
		session.setAttribute("Selected", vo);
		session.setAttribute("userNO", user_no);
		session.setAttribute("start", 0);
		session.setAttribute("end", 13);
		mav.setViewName("redirect:/getProduct.do");
		return mav;
	}
	
	// 카테고리 목록 조회 (상위 카테고리 매개변수)
	@RequestMapping("/getCategoryAll.do")
	public ModelAndView getCategoryAll(HttpSession session, Category_detailVo vo, @RequestParam(value="user_no", defaultValue="0") String user_no) {
		System.out.println("카테고리 이름 : " + vo.getCategory_name());
		ModelAndView mav = new ModelAndView();
		session.setAttribute("Category", categoryserviceimpl.getCategory(vo));
		session.setAttribute("Selected", vo);
		session.setAttribute("userNO", user_no);
		session.setAttribute("start", 0);
		session.setAttribute("end", 13);
		mav.setViewName("redirect:/getProductAll.do");
		return mav;
	}
}
