package blueup.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.OrderServiceImpl;
import blueup.user.vo.CartVo;
import blueup.user.vo.CouponVo;
import blueup.user.vo.OrderVo;
import blueup.user.vo.UsersVo;

@Controller
public class OrderController {
	@Autowired
	private OrderServiceImpl orderserviceimpl;

	/* 주문페이지 */
	@RequestMapping("/getOrder.do")
	public ModelAndView getOrder(HttpSession session, HttpServletRequest request, UsersVo uservo) {
		ModelAndView mav = new ModelAndView();
		
		int user_no = uservo.getUser_no();
		if(user_no < 0) {
			user_no = 0;
		}
		
		/* 상품정보 */
		List<OrderVo> orderlist = new ArrayList<OrderVo>();
		if (session.getAttribute("order") != null) { /* 회원 */
			List<CartVo> memcartlist = (List<CartVo>) session.getAttribute("order");
			for (int i = 0; i < memcartlist.size(); i++) {
				OrderVo ordervo = new OrderVo();
				int product_price = memcartlist.get(i).getTotal_price() / memcartlist.get(i).getQuantity(); // 상품가격
				int pay_amount = memcartlist.get(i).getAll_price() - memcartlist.get(i).getAll_discount(); // 총상품주문금액
				float expected_point = (float) (memcartlist.get(i).getTotal_price() * 0.005);
				ordervo.setMain_image(memcartlist.get(i).getMain_image()); // 상품이미지
				ordervo.setProduct_name(memcartlist.get(i).getProduct_name());// 상품명
				ordervo.setProduct_price(product_price); // 상품 가격
				ordervo.setProduct_color(memcartlist.get(i).getProduct_color()); // 상품색상
				ordervo.setProduct_size(memcartlist.get(i).getProduct_size()); // 상품 사이즈
				ordervo.setQuantity(memcartlist.get(i).getQuantity()); // 수량
				ordervo.setDiscount(memcartlist.get(i).getDiscount()); // 할인혜택
				ordervo.setDelivery_fee(memcartlist.get(i).getDelivery_fee()); // 배송비
				ordervo.setTotal_price(memcartlist.get(i).getTotal_price()); // 상품 총 가격 = 상품가격 * 수량
				ordervo.setAll_price(memcartlist.get(i).getAll_price()); // 총 주문 가격 = 결제가격
				ordervo.setAll_discount(memcartlist.get(i).getAll_discount()); // 총 할인금액
				ordervo.setPay_amount(pay_amount); // 총 상품주문 금액
				ordervo.setExpected_point(expected_point); // 적립예상포인트
				ordervo.setUser_no(memcartlist.get(i).getUser_no());
				orderlist.add(ordervo);

			}
		} else { /* 비회원 */
			List<CartVo> nomemcartlist = (List<CartVo>) session.getAttribute("orderNonMember");
			for (int i = 0; i < nomemcartlist.size(); i++) {
				OrderVo ordervo = new OrderVo();
				int product_price = nomemcartlist.get(i).getTotal_price() / nomemcartlist.get(i).getQuantity();
				ordervo.setMain_image(nomemcartlist.get(i).getMain_image());
				ordervo.setProduct_name(nomemcartlist.get(i).getProduct_name());
				ordervo.setProduct_price(product_price);
				ordervo.setProduct_color(nomemcartlist.get(i).getProduct_color());
				ordervo.setProduct_size(nomemcartlist.get(i).getProduct_size());
				ordervo.setQuantity(nomemcartlist.get(i).getQuantity());
				ordervo.setDiscount(nomemcartlist.get(i).getDiscount());
				ordervo.setDelivery_fee(nomemcartlist.get(i).getDelivery_fee());
				ordervo.setTotal_price(nomemcartlist.get(i).getTotal_price());
				orderlist.add(ordervo);
			}
		}
		
		if(uservo.getUser_no() > 0) {
			/* 할인정보 - 포인트(잔액) */
			int total_point = orderserviceimpl.getToTalPointService(user_no);
			mav.addObject("total_point", total_point);
	
			/* 할인정보 - 쿠폰 */
			List<CouponVo> couponlist = orderserviceimpl.getCouponListService(uservo);
			mav.addObject("couponlist", couponlist);
	
			/* 배송지 정보 */
			mav.addObject("orderlist", orderlist);
			mav.setViewName("order");
		}else {
			mav.addObject("orderlist", orderlist);
			mav.setViewName("order");
		}
		return mav;
	}

	@RequestMapping("/getPoint.do") // 포인트 차감
	@ResponseBody
	public int getPoint(int point, int user_no) {
		int total_point = orderserviceimpl.getToTalPointService(user_no);
		int sum = total_point - point;
		return sum;
	}

	@RequestMapping("/getPointAll.do") // 포인트 전체차감
	@ResponseBody
	public int getPointAll(int user_no) {
		int total_point = orderserviceimpl.getToTalPointService(user_no);
		return total_point;
	}

	@RequestMapping("/getCoupon.do") // 할인정보 - 쿠폰조회
	@ResponseBody
	public Map<String, Object> getCoupon(UsersVo uservo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<CouponVo> couponlist = orderserviceimpl.getCouponListService(uservo);
		map.put("couponlist", couponlist);
		return map;
	}

	@RequestMapping("/getCouponSelect.do") // 할인정보 - 쿠폰선택
	@ResponseBody
	public CouponVo getCouponSelect(int coupon_no, int user_no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user_no", user_no);
		map.put("coupon_no", coupon_no);
		CouponVo coupon = orderserviceimpl.getCouponSelect(map);
		return coupon;
	}

	@RequestMapping("/getDiscounted.do") // 선택 할인적용 금액
	@ResponseBody
	public int getDiscounted(int coupon, int point) {
		int total_discounted = coupon + point;
		return total_discounted;
	}

}