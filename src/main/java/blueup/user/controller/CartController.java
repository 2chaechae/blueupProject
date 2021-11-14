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

	// ��ٱ��� �߰��ϱ�
	@RequestMapping("/addCart.do")
	public ModelAndView addCart(CartVo vo) {
		System.out.println(vo.getProduct_no());
		System.out.println(vo.getUser_no());
		ModelAndView mav = new ModelAndView();
		cartserviceimpl.addCart(vo);
		return mav;
	}

	// ��ٱ��� ��ü �����ϱ�
	@RequestMapping("/deleteAllCart.do")
	public ModelAndView deleteAllCart(CartVo vo) {
		ModelAndView mav = new ModelAndView();
		cartserviceimpl.deleteAllCart(vo);
		mav.setViewName("cart");
		return mav;
	}

	// ��ٱ��� �����ϱ�
	@RequestMapping("/deleteCart.do")
	public ModelAndView deleteCart(CartVo vo) {
		ModelAndView mav = new ModelAndView();
		cartserviceimpl.deleteCart(vo);
		mav.setViewName("cart");
		return mav;
	}

	// ��ٱ��� �����ϱ�
	@RequestMapping("/cartList.do")
	public ModelAndView cartList(CartVo vo) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("cartList", cartserviceimpl.cartList(vo));
		mav.setViewName("cart");
		return mav;
	}

	// ��ٱ��� ����Ʈ ��ȸ�ϱ�
	@RequestMapping("/getcartList.do")
	public ModelAndView getcartList(CartVo vo, ModelAndView mav) {
		System.out.println(vo.getUser_no());
		List<CartVo> test = cartserviceimpl.getcartList(vo);
		System.out.println(test.get(0).getProduct_no());
		mav.addObject("getcartList", cartserviceimpl.getcartList(vo));
		mav.setViewName("cart");
		return mav;
	}

	// ��ٱ��� �����ϱ�
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
