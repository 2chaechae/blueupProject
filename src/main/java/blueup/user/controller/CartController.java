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
	
	// ��ٱ��� �ߺ� üũ
	@RequestMapping("/addCheckCart.do")
	@ResponseBody
	public int addCheckCart(HttpSession session, @RequestParam(value="user_no", required=false) String user_no, CartVo vo) {
		int result = 0;
		if(user_no != null) {
			System.out.println("ȸ�� īƮ�ߺ�");
			List<CartVo> check = cartserviceimpl.selectProductNo(user_no);
			for(int i=0; i<check.size(); i++) {
				System.out.println("cart" + check.get(i).getProduct_no());
				System.out.println("add" + vo.getProduct_no());
				System.out.println("cart" + check.get(i).getProduct_color());
				System.out.println("add" + vo.getProduct_color());
				System.out.println("cart" + check.get(i).getProduct_size());
				System.out.println("add" + vo.getProduct_size());
				if(check.get(i).getProduct_no() == vo.getProduct_no() && check.get(i).getProduct_color().equals(vo.getProduct_color()) &&  check.get(i).getProduct_size().equals(vo.getProduct_size())){
					System.out.println("cart" + check.get(i).getProduct_no());
					System.out.println("add" + vo.getProduct_no());
					result = 1;
				}
			}
			System.out.println(result);
		}else {
			List<CartVo> check = (List<CartVo>) session.getAttribute("cart");
			System.out.println("��ȸ�� īƮ �ߺ�");
			if(check != null) {
				for(int i=0; i<check.size(); i++) {
					System.out.println("cart" + check.get(i).getProduct_no());
					System.out.println("add" + vo.getProduct_no());
					System.out.println("cart" + check.get(i).getProduct_color());
					System.out.println("add" + vo.getProduct_color());
					System.out.println("cart" + check.get(i).getProduct_size());
					System.out.println("add" + vo.getProduct_size());
					if(check.get(i).getProduct_no() == vo.getProduct_no() && check.get(i).getProduct_color().equals(vo.getProduct_color()) &&  check.get(i).getProduct_size().equals(vo.getProduct_size())){
					   System.out.println("cart" + check.get(i).getProduct_no());
					   System.out.println("add" + vo.getProduct_no());
					   result = 1;
					}
				}
			}
		}
		return result;
	}
	
	// ��ٱ��� �߰��ϱ�
	@RequestMapping("/addCart.do")
	@ResponseBody
	public String addCart(CartVo vo, HttpSession session, @RequestParam(value="user_no", required=false) String user_no) {
		String result = "0";
			
		/////////////ȸ��//////////////////
		if(user_no != null) {
			System.out.println("ȸ��");
			result = Integer.toString(cartserviceimpl.addCart(vo));
			System.out.println("ȸ�� īƮ �߰� :" + result + " �߰� ��ǰ : " + vo.getProduct_no());

		}else {
		////////////��ȸ��/////////////////
			if(session.getAttribute("cart") == null) {
				System.out.println("��ȸ��");
				List<CartVo> cartList = new ArrayList<CartVo>();
				cartList.add(vo);
				session.setAttribute("cart", cartList);
				System.out.println("ó�� īƮ����Ʈ ����");
				result = "1";
			}else {
				List<CartVo> cartList = (List<CartVo>) session.getAttribute("cart");
				int present = cartList.size();
				List<CartVo> addcartList = (List<CartVo>) session.getAttribute("cart");
				addcartList.add(vo);
				System.out.println(vo.getDiscount());
				System.out.println(vo.getDiscount_rate());
				System.out.println(vo.getDiscount_total());
				if(present < addcartList.size()) {
					System.out.println("���� üũ �Ϸ�");
					result = "1";
					// session:cart�� ������ cartList�� ������
					session.setAttribute("cart", null);
					session.setAttribute("cart", addcartList);
				}
			}
		}
		System.out.println("result : " + result);
		return result;
	}

	// ��ٱ��� ��ü �����ϱ� - ȸ��
	@RequestMapping("/deleteAllCart.do")
	@ResponseBody
	public int deleteAllCart(String user_no) {
		System.out.println("ȸ�� ��ٱ��� ��ü ���� ����");
		int result = 0;
		int delete = cartserviceimpl.deleteAllCart(user_no);
		if(delete > 0) {
			System.out.println("��ü�����Ϸ�");
			result = 1;
		}
		return result;
	}
	
	// ��ٱ��� �����ϱ� - ȸ��
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
	
	// ��ٱ��� ��ü�����ϱ� - ��ȸ��
	@RequestMapping("/deleteAllCartNonMember.do")
	@ResponseBody
	public int deleteAllCartNonMemeber(HttpSession session) {
		System.out.println("��ȸ�� ��ٱ��� ��ü ���� ����");
		int result = 0;
		session.setAttribute("cart", null);
		System.out.println("��ȸ�� ��ü�����Ϸ�");
		result = 1;
		return result;
	}
	
	// ��ٱ��� �����ϱ� - ��ȸ��
	@RequestMapping("/deleteCartNonMember.do")
	@ResponseBody
	public CartVo deleteCartNonMember(@RequestBody List<String> product_no, HttpSession session) {
		List<CartVo> cart =  (List<CartVo>) session.getAttribute("cart");
		int all_price = 0;
		int all_discount = 0;
		CartVo vo = new CartVo();
		// ���õ� īƮ ����
		for(int i=0; i < cart.size(); i++) {
			for(int j=0; j < product_no.size(); j++) {
				if(cart.get(i).getProduct_no() == Integer.parseInt(product_no.get(j))) {
					cart.remove(i);
				}
			}
		}
		// ���� �� ���� ���� �հ� ���ϱ�
		if(cart.size() > 0) {
			for(int i=0; i < cart.size(); i++) {
				all_price += cart.get(i).getTotal_price();
				all_discount += cart.get(i).getDiscount() * cart.get(i).getQuantity();
			}
			// �հ� session�� �ݿ�
			for(int i=0; i < cart.size(); i++) {
				cart.get(i).setAll_price(all_price);
				cart.get(i).setAll_discount(all_discount);
			}
			// ���� �ѱ��
			session.setAttribute("cart", cart);
			vo.setAll_price(all_price);
			vo.setAll_discount(all_discount);
			return vo;
		}
		else {
			return vo;
		}
	}
	
	// ��ٱ��� ����Ʈ ��ȸ�ϱ�
	@RequestMapping("/getcartList.do")
	@ResponseBody
	public ModelAndView getcartList(ModelAndView mav, HttpSession session, @RequestParam(value="user_no", required=false) String user_no) {
		/////////////ȸ��//////////////
		System.out.println(user_no);
		if(user_no != null) {
			List<CartVo> test = cartserviceimpl.cartList(user_no);
				if(test.size() == 0) {
					mav.addObject("emptyCart", "����");
				}else {
					System.out.println("��ٱ��� ��ȸ ��ǰ ��ȣ : " + test.get(0).getAll_price());
					mav.addObject("getcartList", cartserviceimpl.cartList(user_no));
				}
				mav.setViewName("cart");
		}else{
		/////////////��ȸ��//////////////
			System.out.println("��ȸ��");
			System.out.println(user_no);
			List<CartVo> list = (List<CartVo>) session.getAttribute("cart");
			if(list != null && list.size() > 0 ) {
				List<CartVo> cartList = (List<CartVo>) session.getAttribute("cart");
				for(CartVo test : cartList) {
					System.out.println("��ȸ�� ��ٱ��� ��ȸ : " + test.getProduct_name());
				}
				mav.addObject("getcartList", cartList);
				mav.setViewName("cart");
			}else {
				mav.addObject("emptyCart", "����");
				mav.setViewName("cart");
			}
		}
		return mav;
	}

	// ���õ� ��ٱ��� ���� �������� - ȸ��
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
	
	// ���õ� ��ٱ��� ���� �������� - ��ȸ��
	@RequestMapping("/selectedcartListNonMember.do")
	@ResponseBody
	public CartVo selectedcartListNonMember(@RequestBody List<String> product_no, HttpSession session){
		System.out.println("test");
		CartVo vo = new CartVo();
		int product_all = 0;
		int discount_all = 0;
		List<CartVo> cart =  (List<CartVo>) session.getAttribute("cart");
		for(int i=0; i < cart.size(); i++) {
			for(int j=0; j < product_no.size(); j++) {
				if(cart.get(i).getProduct_no() == Integer.parseInt(product_no.get(j))) {
					CartVo check = cart.get(i);
					product_all += check.getTotal_price();
					discount_all += check.getAll_discount();
					System.out.println("���ǿ� �ִ� ���� �� : " + check.getAll_discount());
				}
			}
		}
		vo.setTotal_price(product_all);
		vo.setAll_discount(discount_all);
		return vo;
	}
	
	
	// ��ٱ��� �����ϱ� - ȸ��
	@RequestMapping("/updateCartNum.do")
	@ResponseBody
	public int updateCartNum(CartVo vo) {
		return cartserviceimpl.updateCartNum(vo);
	}
	
	// ��ٱ��� �����ϱ� - ��ȸ��
	@RequestMapping("/updateCartNumNonMember.do")
	@ResponseBody
	public int updateCartNumNonMember(int product_no, CartVo vo, HttpSession session) {
		List<CartVo> cart = (List<CartVo>) session.getAttribute("cart");
		int result = 0;
		for(int i=0; i < cart.size(); i++) {
			if(cart.get(i).getProduct_no() == product_no) {
				System.out.println("test");
				CartVo check = cart.get(i);
				check.setQuantity(vo.getQuantity()); //��������
				check.setDiscount_total(vo.getDiscount() * vo.getQuantity()); // ���ΰ� ���� 
				check.setTotal_price(vo.getTotal_price()); // �� �Ǹž� ����
				session.setAttribute("cart", cart);
				result = 1;
			}
		}
		return result;
	}
	
	// �ֹ������� �̵� - ȸ��
	@RequestMapping("/moveToOrder.do")
	@ResponseBody
	public ModelAndView moveToOrder(@RequestParam(value="cart_no")List<String> cart_no, HttpSession session, int user_no) {
		ModelAndView mav = new ModelAndView();
		List<CartVo> orderList = cartserviceimpl.selectedcartList(cart_no);
		for(int i=0; i < orderList.size(); i++) {
			System.out.println(orderList.get(i).getAll_discount());
			System.out.println(orderList.get(i).getProduct_name());
			System.out.println("user_no" + orderList.get(i).getUser_no());
		}
		int check = cartserviceimpl.deleteCart(cart_no);
		if(check > 0) {
			System.out.println("���� ����");
			session.setAttribute("order", orderList);
			mav.setViewName("redirect:/getOrder.do?user_no="+user_no);
		}
		return mav;
	}
	
	// �ֹ������� �̵� - ��ȸ��
	@RequestMapping("/moveToOrderNonMember.do")
	@ResponseBody
	public ModelAndView moveToOrderNonMember(@RequestParam(value="product_no" )List<String> product_no, HttpSession session) {
		System.out.println("��ٱ��Ͽ��� ��ȸ�� �ֹ� ������ ");
		ModelAndView mav = new ModelAndView();
		List<CartVo> orderList = new ArrayList<CartVo>();
		List<CartVo> cart = (List<CartVo>) session.getAttribute("cart");
		for(int i=0; i < cart.size(); i++) {
			for(int j=0; j < product_no.size(); j++) {
				if(cart.get(i).getProduct_no() == Integer.parseInt(product_no.get(j))) {
					orderList.add(cart.get(i));
					cart.remove(i);
				}
			}
		}
		for(int i=0; i<orderList.size(); i++) {
			orderList.get(i).getProduct_color();
		}
		session.setAttribute("cart", cart);
		session.setAttribute("orderNonMember", orderList);
		mav.setViewName("redirect:/getOrder.do");
		return mav;
	}
}
