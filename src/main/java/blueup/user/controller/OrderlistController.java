package blueup.user.controller;

import java.util.ArrayList;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import blueup.user.service.OrderlistServiceImpl;
import blueup.user.vo.OrderlistVo;

@Controller
public class OrderlistController {
	@Autowired
	private OrderlistServiceImpl orderserviceimpl;

	/* 주문,배송 전체조회 */
	@RequestMapping("/getOrderList.do")
	public ModelAndView getOrderList(int user_no) {
		ModelAndView mav = new ModelAndView();

		List<OrderlistVo> orderlist = orderserviceimpl.getOrderList(user_no);
		List<Object> orderno = new ArrayList<Object>();

		for (int i = 0; i < orderlist.size(); i++) {
			orderno.add(i, orderlist.get(i).getOrder_no());
		}

		List<Object> newList = (List<Object>) orderno.stream().distinct().collect(Collectors.toList()); // 주문번호 중복제거
		Collections.sort(newList, Collections.reverseOrder()); // 역순정렬

		mav.setViewName("orderlist");
		mav.addObject("orderNum", orderlist);
		mav.addObject("newList", newList);

		return mav;
	}

	/* 주문,배송 상세조회 */
	@RequestMapping("/getOrderDetail.do")
	@ResponseBody
	public ModelAndView getOrder(HttpSession session, OrderlistVo vo) {
		ModelAndView mav = new ModelAndView();

		List<OrderlistVo> orderdetail = orderserviceimpl.getOrderDetail(vo);

		String size = "";

		mav.setViewName("orderdetail");
		mav.addObject("orderdetail", orderdetail);

		return mav;
	}

	/* 전체상품 주문취소 */
	@RequestMapping("/getOrderCancelAll.do")
	@ResponseBody
	public Map<String, Object> getOrderCancelAll(HttpServletRequest request, HttpSession session, OrderlistVo vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<OrderlistVo> num = orderserviceimpl.getOrderDetail(vo);
		map.put("num", num);

		orderserviceimpl.getOrderCancelAll(vo);
		return map;
	}

	/* 주문,배송 선택취소페이지 */
	@RequestMapping("/getOrderCancelPage.do")
	public ModelAndView getOrderCancelPage(HttpSession session, OrderlistVo vo) {
		ModelAndView mav = new ModelAndView();

		List<OrderlistVo> ordercancel = orderserviceimpl.getOrderDetail(vo);
		List<Object> orderno = new ArrayList<Object>();
		String size = "";
		for (int i = 0; i < ordercancel.size(); i++) {
			orderno.add(i, ordercancel.get(i).getOrder_no());
			orderno.add(i, ordercancel.get(i).getProduct_no());
			if (i == ordercancel.size() - 1) {
				size = size + (i + 1);
			}
		}

		List<Object> newList = (List<Object>) orderno.stream().distinct().collect(Collectors.toList()); // 주문번호 중복제거

		mav.setViewName("ordercancel");
		mav.addObject("ordercancel", ordercancel);
		mav.addObject("size", size);
		mav.addObject("newList", newList);

		return mav;
	}

	/* 선택주문취소 */
	@RequestMapping("/getOrderCancel.do")
	@ResponseBody
	public Map<String, Object> getOrderCancel(HttpServletRequest request, HttpSession session, OrderlistVo vo) {
		Map<String, Object> map = new HashMap<String, Object>();

		String size = request.getParameter("size");
		String[] list = size.split("");

		String pdn = request.getParameter("pdn");
		String[] pdnList = pdn.split("/");

		int cancel_quantity = 0; // 취소수량

		for (int i = 0; i < list.length; i++) {
			cancel_quantity = Integer.parseInt(list[i]);
			vo.setCancel_quantity(cancel_quantity);
			vo.setProduct_name(pdnList[i]);

			orderserviceimpl.getOrderCancel(vo);
		}
		int total_quantity = vo.getQuantity() - cancel_quantity;

		map.put("size", list);

		return map;
	}

	/* 구매확정 */
	@RequestMapping("/getOrderConfirmed.do")
	@ResponseBody
	public Map<String, Object> getOrderConfirmed(HttpServletRequest request, HttpSession session, OrderlistVo vo) {
		Map<String, Object> map = new HashMap<String, Object>();

		orderserviceimpl.getOrderConfirmed(vo);

		return map;
	}

	/* 반품요청철회 */
	@RequestMapping("/getWithdrawalReturn.do")
	@ResponseBody
	public Map<String, Object> getWithdrawalReturn(HttpServletRequest request, HttpSession session, OrderlistVo vo) {
		Map<String, Object> map = new HashMap<String, Object>();

		orderserviceimpl.getWithdrawalReturn(vo);

		return map;
	}

	/* 교환요청철회 */
	@RequestMapping("/getWithdrawalExchange.do")
	@ResponseBody
	public Map<String, Object> getWithdrawalExchange(HttpServletRequest request, HttpSession session, OrderlistVo vo) {
		Map<String, Object> map = new HashMap<String, Object>();

		orderserviceimpl.getWithdrawalExchange(vo);

		return map;
	}

	/* 교환요청 */
	@RequestMapping("/getExchangeRequest.do")
	@ResponseBody
	public Map<String, Object> getExchangeRequest(HttpServletRequest request, HttpSession session, OrderlistVo vo) {
		Map<String, Object> map = new HashMap<String, Object>();

		orderserviceimpl.getExchangeRequest(vo);

		return map;
	}

	/* 반품요청 */
	@RequestMapping("/getReturnRequest.do")
	@ResponseBody
	public Map<String, Object> getReturnRequest(HttpServletRequest request, HttpSession session, OrderlistVo vo) {
		Map<String, Object> map = new HashMap<String, Object>();

		orderserviceimpl.getReturnRequest(vo);

		return map;
	}

}