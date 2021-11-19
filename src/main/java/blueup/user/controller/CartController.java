package blueup.user.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.CartServiceImpl;
import blueup.user.vo.CartVo;


@Controller
public class CartController {

	@Autowired
	private CartServiceImpl cartserviceimpl;

	// 장바구니 추가하기
	@RequestMapping("/addCart.do")
	@ResponseBody
	public String addCart(CartVo vo, HttpSession session, HttpServletRequest req, HttpServletResponse repo, @RequestParam(value="user_no", required=false) String user_no) {
		String result = "0";
			
		/////////////회원//////////////////
		if(user_no != null) {
			System.out.println("회원");
			result = Integer.toString(cartserviceimpl.addCart(vo));
			System.out.println("회원 카트 추가 :" + result + " 추가 상품 : " + vo.getProduct_no());

		}else {
		////////////비회원/////////////////
			if(session.getAttribute("cart") == null) {
				System.out.println("비회원");
				List<CartVo> cartList = new ArrayList<CartVo>();
				cartList.add(vo);
				session.setAttribute("cart", cartList);
				System.out.println("처음 카트리스트 생성");
				result = "1";
			}else {
				List<CartVo> cartList = (List<CartVo>) session.getAttribute("cart");
				List<CartVo> addcartList = (List<CartVo>) session.getAttribute("cart");
				addcartList.add(vo);
				if(cartList.size() < addcartList.size()) {
					System.out.println("길이 체크 완료");
					result = "1";
					// session:cart를 수정된 cartList로 재정의
					session.setAttribute("cart", null);
					session.setAttribute("cart", addcartList);
				}
			}
		}
		System.out.println("result : " + result);
		return result;
	}

	// 장바구니 전체 삭제하기 - 회원
	@RequestMapping("/deleteAllCart.do")
	@ResponseBody
	public int deleteAllCart(String user_no) {
		System.out.println("회원 장바구니 전체 삭제 시작");
		int result = 0;
		int delete = cartserviceimpl.deleteAllCart(user_no);
		if(delete > 0) {
			System.out.println("전체삭제완료");
			result = 1;
		}
		return result;
	}

	// 장바구니 삭제하기 - 회원
	@RequestMapping("/deleteCart.do")
	@ResponseBody
	public int deleteCart(@RequestBody List<String> cart_no) {
		int result = 0;
		int count = cart_no.size();
		int delete = cartserviceimpl.deleteCart(cart_no);
			if(delete == count) {
				result = 1;
			}
		return result;
	}

	// 장바구니 리스트 조회하기
	@RequestMapping("/getcartList.do")
	@ResponseBody
	public ModelAndView getcartList(ModelAndView mav, HttpSession session, @RequestParam(value="user_no", required=false) String user_no) {
		/////////////회원//////////////
		System.out.println(user_no);
		if(user_no != null) {
			List<CartVo> test = cartserviceimpl.cartList(user_no);
				if(test.size() == 0) {
					mav.addObject("emptyCart", "없음");
				}else {
					System.out.println("장바구니 조회 상품 번호 : " + test.get(0).getAll_price());
					mav.addObject("getcartList", cartserviceimpl.cartList(user_no));
				}
				mav.setViewName("cart");
		}else{
		/////////////비회원//////////////
			System.out.println("비회원");
			System.out.println(user_no);
			if(session.getAttribute("cart") != null) {
				List<CartVo> cartList = (List<CartVo>) session.getAttribute("cart");
				for(CartVo test : cartList) {
					System.out.println("비회원 장바구니 조회 : " + test.getProduct_name());
				}
				mav.addObject("getcartList", cartList);
				mav.setViewName("cart");
			}else {
				mav.addObject("emptyCart", "없음");
				mav.setViewName("cart");
			}
		}
		return mav;
	}

	// 선택된 장바구니 내역 가져오기
	@RequestMapping("/selectedcartList.do")
	@ResponseBody
	public List<CartVo> selectedcartList(@RequestBody List<String> cart_no){
		System.out.println("test");
		List<CartVo> test = cartserviceimpl.selectedcartList(cart_no);
		for(CartVo m : test) {
			System.out.println(m.getAll_price());
		}
		return cartserviceimpl.selectedcartList(cart_no);
	}
	
	
	// 장바구니 변경하기
	@RequestMapping("/updateCartNum.do")
	@ResponseBody
	public int updateCartNum(CartVo vo) {
		System.out.println(vo.getCart_no());
		System.out.println(vo.getUser_no ());
		System.out.println(vo.getQuantity());
		System.out.println(vo.getTotal_price());
		return cartserviceimpl.updateCartNum(vo);
	}
}
