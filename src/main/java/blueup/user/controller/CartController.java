package blueup.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.CartServiceImpl;
import blueup.user.vo.CartVo;

@Controller
public class CartController {

	@Autowired
	private CartServiceImpl cartserviceimpl;

	// 장바구니 추가하기
	@RequestMapping("/addCart.do")
	public ModelAndView addCart(CartVo vo) {
		System.out.println(vo.getProduct_no());
		System.out.println(vo.getUser_no());
		ModelAndView mav = new ModelAndView();
		cartserviceimpl.addCart(vo);
		return mav;
	}

	// 장바구니 전체 삭제하기
	@RequestMapping("/deleteAllCart.do")
	public ModelAndView deleteAllCart(CartVo vo) {
		ModelAndView mav = new ModelAndView();
		cartserviceimpl.deleteAllCart(vo);
		mav.setViewName("cart");
		return mav;
	}

	// 장바구니 삭제하기
	@RequestMapping("/deleteCart.do")
	public ModelAndView deleteCart(CartVo vo) {
		ModelAndView mav = new ModelAndView();
		cartserviceimpl.deleteCart(vo);
		mav.setViewName("cart");
		return mav;
	}

	// 장바구니 선택하기
	@RequestMapping("/cartList.do")
	public ModelAndView cartList(CartVo vo) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("cartList", cartserviceimpl.cartList(vo));
		mav.setViewName("cart");
		return mav;
	}

	// 장바구니 리스트 조회하기
	@RequestMapping("/getcartList.do")
	public ModelAndView getcartList(CartVo vo, ModelAndView mav) {
		System.out.println(vo.getUser_no());
		List<CartVo> test = cartserviceimpl.getcartList(vo);
		System.out.println(test.get(0).getProduct_no());
		mav.addObject("getcartList", cartserviceimpl.getcartList(vo));
		mav.setViewName("cart");
		return mav;
	}

	// 장바구니 변경하기
	@RequestMapping("/updateCart.do")
	public ModelAndView updateCart(CartVo vo) {
		System.out.println(vo.getCart_no());
		System.out.println(vo.getUser_no ());
		System.out.println(vo.getProduct_no());
		System.out.println(vo.getProduct_name());
		System.out.println(vo.getQuantity());
		System.out.println(vo.getTotal_price());
		System.out.println(vo.getColor());
		System.out.println(vo.getClothes_size());
		ModelAndView mav = new ModelAndView();
		cartserviceimpl.addCart(vo);
		return mav;
	}
}
