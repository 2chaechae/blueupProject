package blueup.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.CartServiceImpl;
import blueup.user.service.WishServiceImpl;
import blueup.user.vo.CartVo;
import blueup.user.vo.WishListVo;

@Controller
public class CartController {

	@Autowired
	private CartServiceImpl cartserviceimpl;
	@Autowired
	private WishServiceImpl wishserviceimpl;

	// 장바구니 추가하기
	@RequestMapping("/addCart.do")
	@ResponseBody
	public String addCart(CartVo vo, HttpSession session) {
		System.out.println("test");
		//session.setAttribute("userNO", 1); //회원
		//int user_no = (int) session.getAttribute("userNO");
		int user_no = 0;
		String result = Integer.toString(0);
		System.out.println(user_no);
		WishListVo Wishvo = new WishListVo();
		Wishvo.setUser_no(user_no);
		/////////////회원//////////////////
		if(user_no > 0) {
			vo.setUser_no(user_no);
			result = Integer.toString(cartserviceimpl.addCart(vo));
			System.out.println(result);
			wishserviceimpl.deleteWishList(Wishvo);
		}else {
		////////////비회원/////////////////
			if(session.getAttribute("cart") == null) {
				List<Integer> product_no = new ArrayList<Integer>();
				session.setAttribute("cart", product_no);
			}else {
				List<Integer> product_no = (List<Integer>) session.getAttribute("cart");
				List<Integer> addProduct_no = (List<Integer>) session.getAttribute("cart");
				addProduct_no.add(vo.getProduct_no());
				if(product_no.size() < addProduct_no.size()) {
					result = Integer.toString(1);
					wishserviceimpl.deleteWishList(Wishvo);
				}
				System.out.println(addProduct_no.get(0));
			}
		}
		
		return result;
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
		System.out.println(vo.getProduct_size());
		System.out.println(vo.getProduct_color());
		ModelAndView mav = new ModelAndView();
		cartserviceimpl.addCart(vo);
		return mav;
	}
}
