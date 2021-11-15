package blueup.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

	// ��ٱ��� �߰��ϱ�
	@RequestMapping("/addCart.do")
	@ResponseBody
	public String addCart(CartVo vo, HttpSession session, HttpServletRequest req, HttpServletResponse repo) {
		System.out.println("test");
		session.setAttribute("userNO", 1); //ȸ��
		int user_no = (int) session.getAttribute("userNO");
		//int user_no = 0;
		String result = Integer.toString(0);
		System.out.println(user_no);
		WishListVo Wishvo = new WishListVo();
		Wishvo.setUser_no(user_no);
		/////////////ȸ��//////////////////
		if(user_no > 0) {
			Wishvo.setUser_no(user_no);
			Wishvo.setProduct_no(vo.getProduct_no());
			result = Integer.toString(cartserviceimpl.addCart(vo));
			System.out.println(result);
			System.out.println(vo.getProduct_no());
			int deleteResult = wishserviceimpl.deleteWishCart(Wishvo);
			System.out.println("���ø���Ʈ ���� : " + deleteResult);
		}else {
		////////////��ȸ��/////////////////
			if(session.getAttribute("cart") == null) {
				List<CartVo> cartList = new ArrayList<CartVo>();
				cartList.add(vo);
				session.setAttribute("cart", cartList);
				System.out.println("ó�� īƮ����Ʈ ����");
				result = Integer.toString(1);
			}else {
				List<CartVo> cartList = (List<CartVo>) session.getAttribute("cart");
				List<CartVo> addcartList = (List<CartVo>) session.getAttribute("cart");
				addcartList.add(vo);
				if(cartList.size() < addcartList.size()) {
					System.out.println("���� üũ �Ϸ�");
					result = Integer.toString(1);
					session.setAttribute("cart", null);
					session.setAttribute("cart", addcartList);
				}
				System.out.println(addcartList.get(0));
				///��ȸ�� ���ø���Ʈ ����////
				Cookie cookies[] = req.getCookies();
				String[] p_no = null;
				String p_new_no = "";

				// ��Ű �� Ȯ��
				for (Cookie c : cookies) {
					if (c.getName().equals("p_list")) {
						String value = c.getValue();
						p_no = value.split("%2F");
						// ��Ű�� 0�̸�,
						if(p_no.length == 0) {
							Cookie cookie = new Cookie("p_list", null);
							repo.addCookie(cookie);
						}
					}
				}
				System.out.println(p_no[0]);
				System.out.println("������ǰ ��ȣ : " + vo.getProduct_no());
				// ��Ű �� == ��ǰ��ȣ wish no ����
				if (p_no != null) {
					for (int i=0; i<p_no.length; i++) {
						System.out.println("��Ű �ξƴ�");
						if (Integer.parseInt(p_no[i]) != vo.getProduct_no()) {
								p_new_no += p_no[i];
								p_new_no += "%2F";
						}
					}
					System.out.println("���ο� ����Ʈ" + p_new_no);
				}
				String check[] = p_new_no.split("%2F");

				if(p_no.length > check.length || check.length == 1 && p_no.length == 1) {
					Cookie cookie = new Cookie("p_list", null);
					repo.addCookie(cookie);
					System.out.println("��Ű����");
					cookie = new Cookie("p_list", p_new_no);
					repo.addCookie(cookie);
					System.out.println("��Ű�߰�");
				}
			}
		}
		System.out.println("result : " + result);
		return result;
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
	public ModelAndView getcartList(CartVo vo, ModelAndView mav, HttpSession session) {
		if(session.getAttribute("userNO") != null) {
			List<CartVo> test = cartserviceimpl.getcartList(vo);
			System.out.println(test.get(0).getProduct_no());
			mav.addObject("getcartList", cartserviceimpl.getcartList(vo));
			mav.setViewName("cart");
		}else {
			List<CartVo> cartList = (List<CartVo>) session.getAttribute("cart");
			for(CartVo test : cartList) {
				System.out.println(test.getProduct_name());
			}
			mav.addObject("getcartList", cartList);
			mav.setViewName("cart");
		}
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
		System.out.println(vo.getProduct_size());
		System.out.println(vo.getProduct_color());
		ModelAndView mav = new ModelAndView();
		cartserviceimpl.addCart(vo);
		return mav;
	}
}
