package blueup.user.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import blueup.user.service.CategoryServiceImpl;
import blueup.user.vo.Category_detailVo;

@Controller
public class CategoryController {
	
	@Autowired 
	private CategoryServiceImpl categoryserviceimpl;
	
	@RequestMapping("/getCategory.do")
	public ModelAndView getCategory(HttpSession session, Category_detailVo vo) {
		System.out.println(vo.getCategory_name());
		System.out.println(vo.getDetailed_category_name());
		ModelAndView mav = new ModelAndView();
		session.setAttribute("Category", categoryserviceimpl.getCategory(vo));
		session.setAttribute("Selected", vo);
		mav.setViewName("redirect:/getProduct.do");
		return mav;
	}
	
	@RequestMapping("/getCategoryAll.do")
	public ModelAndView getCategoryAll(HttpSession session, Category_detailVo vo) {
		System.out.println(vo.getCategory_name());
		ModelAndView mav = new ModelAndView();
		session.setAttribute("Category", categoryserviceimpl.getCategory(vo));
		session.setAttribute("Selected", vo);
		mav.setViewName("redirect:/getProductAll.do");
		return mav;
	}
}
