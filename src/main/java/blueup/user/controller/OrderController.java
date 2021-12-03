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
import org.springframework.web.bind.annotation.RequestParam;
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

	/* �ֹ������� */
	@RequestMapping("/getOrder.do")
	public ModelAndView getOrder(HttpSession session, HttpServletRequest request, UsersVo uservo) {
		ModelAndView mav = new ModelAndView();
		session = request.getSession();
		int user_no = 0;
		System.out.println("��ٱ��Ͽ��� /getOrder�� �Ѿ�� �� : "+user_no);
		int total_point;
		/* ��ǰ���� */
		List<OrderVo> orderlist = new ArrayList<OrderVo>();
		if (session.getAttribute("order") != null) { /* ȸ�� */
			List<CartVo> memcartlist = (List<CartVo>) session.getAttribute("order");
			for (int i = 0; i < memcartlist.size(); i++) {
				System.out.println("for�� ����!!!!!!!!");
				OrderVo ordervo = new OrderVo();
				int product_price = memcartlist.get(i).getTotal_price() / memcartlist.get(i).getQuantity(); // ��ǰ����
				int pay_amount = memcartlist.get(i).getAll_price() - memcartlist.get(i).getAll_discount(); // �ѻ�ǰ�ֹ��ݾ�
				float expected_point = (float) (memcartlist.get(i).getTotal_price() * 0.005);
				ordervo.setProduct_no(memcartlist.get(i).getProduct_no());
				ordervo.setMain_image(memcartlist.get(i).getMain_image()); // ��ǰ�̹���
				ordervo.setProduct_name(memcartlist.get(i).getProduct_name());// ��ǰ��
				ordervo.setProduct_price(product_price); // ��ǰ ����
				ordervo.setProduct_color(memcartlist.get(i).getProduct_color()); // ��ǰ����
				ordervo.setProduct_size(memcartlist.get(i).getProduct_size()); // ��ǰ ������
				ordervo.setQuantity(memcartlist.get(i).getQuantity()); // ����
				ordervo.setDiscount(memcartlist.get(i).getDiscount()); // ��������
				ordervo.setDelivery_fee(memcartlist.get(i).getDelivery_fee()); // ��ۺ�
				ordervo.setTotal_price(memcartlist.get(i).getTotal_price()); // ��ǰ �� ���� = ��ǰ���� * ����
				ordervo.setAll_price(memcartlist.get(i).getAll_price()); // �� �ֹ� ���� = ��������
				ordervo.setAll_discount(memcartlist.get(i).getAll_discount()); // �� ���αݾ�
				ordervo.setPay_amount(pay_amount); // �� ��ǰ�ֹ� �ݾ�
				ordervo.setExpected_point(expected_point); // ������������Ʈ
				ordervo.setUser_no(memcartlist.get(i).getUser_no());
				orderlist.add(ordervo);
				System.out.println("�����αݾ�" + ordervo.getAll_discount());
				System.out.println("��->�ֹ�" + ordervo.getUser_no());
				user_no = ordervo.getUser_no();
			}
			System.out.println(orderlist.get(0).getProduct_name());
			session.setAttribute("orderListSession", orderlist);
		} else { /* ��ȸ�� */
			List<CartVo> nomemcartlist = (List<CartVo>) session.getAttribute("orderNonMember");
			for (int i = 0; i < nomemcartlist.size(); i++) {
				System.out.println("�� ���� �ɸ��� �ȵǴ°ǵ� �ɸ��⸸ �غ���");
				OrderVo ordervo = new OrderVo();
				int product_price = nomemcartlist.get(i).getTotal_price() / nomemcartlist.get(i).getQuantity();
				ordervo.setProduct_no(nomemcartlist.get(i).getProduct_no());
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
		
		if(user_no > 0) {
			/* �������� - ����Ʈ(�ܾ�) */
			Integer temp_total_point = orderserviceimpl.getToTalPointService(user_no);
			if(temp_total_point == null) {
				total_point = 0;
			}else {
				total_point = temp_total_point;
			}
			
			
			mav.addObject("total_point", total_point);
			/* �������� - ���� */
			List<CouponVo> couponlist = orderserviceimpl.getCouponListService(uservo);
			mav.addObject("couponlist", couponlist);
	
			/* ����� ���� */
			mav.addObject("user", user_no);
			mav.addObject("orderlist", orderlist);
			mav.setViewName("order");
		}else {
			mav.addObject("user", user_no);
			mav.addObject("orderlist", orderlist);
			mav.setViewName("order");
		}
		return mav;
	}

	@RequestMapping("/getPoint.do") // ����Ʈ ����
	@ResponseBody
	public int getPoint(int point, int user_no) {
		int total_point = orderserviceimpl.getToTalPointService(user_no);
		int sum = total_point - point;
		return sum;
	}

	@RequestMapping("/getPointAll.do") // ����Ʈ ��ü����
	@ResponseBody
	public int getPointAll(int user_no) {
		int total_point = orderserviceimpl.getToTalPointService(user_no);
		return total_point;
	}

	@RequestMapping("/getCoupon.do") // �������� - ������ȸ
	@ResponseBody
	public Map<String, Object> getCoupon(UsersVo uservo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<CouponVo> couponlist = orderserviceimpl.getCouponListService(uservo);
		map.put("couponlist", couponlist);
		return map;
	}
	
	@RequestMapping("/getCouponSelect.do") // �������� - ��������
	@ResponseBody
	public CouponVo getCouponSelect(int coupon_no, int user_no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user_no", user_no);
		map.put("coupon_no", coupon_no);
		CouponVo coupon = orderserviceimpl.getCouponSelect(map);
		return coupon;
	}

	@RequestMapping("/getDiscounted.do") // ���� �������� �ݾ�
	@ResponseBody
	public int discounted(@RequestParam(value="product_discount", required=false) int product_discount, @RequestParam(value="coupon_discount", required=false) int coupon_discount, 
			@RequestParam(value="point_discount", required=false)int point_discount) {
		int total_discounted = product_discount + coupon_discount + point_discount;
		return total_discounted;
	}

}