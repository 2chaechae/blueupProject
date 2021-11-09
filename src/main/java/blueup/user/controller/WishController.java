package blueup.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.WishServiceImpl;
import blueup.user.vo.NoticeVo;
import blueup.user.vo.WishListVo;

@Controller
public class WishController {
	
	@Autowired
	private WishServiceImpl wishserviceimpl;
	
	// ���ø���Ʈ �߰��ϱ�
	@RequestMapping("/insertWishList.do")
	public ModelAndView insertWishList(WishListVo vo) {
		System.out.println(vo.getProduct_no());
		System.out.println(vo.getUser_no());
		ModelAndView mav = new ModelAndView();
		wishserviceimpl.insertWishList(vo);
		mav.setViewName("ProductView");
		return mav;
	}
	
	// ���ø���Ʈ �����ϱ�
	@RequestMapping("/deleteWishList.do")
	public ModelAndView deleteWishList(WishListVo vo) {
		ModelAndView mav = new ModelAndView();
		wishserviceimpl.deleteWishList(vo);
		mav.setViewName("ProductView");
		return mav;
	}
}
