package blueup.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.OrderlistServiceImpl;
import blueup.user.vo.OrderlistVo;

@Controller
public class OrderlistController {
	@Autowired
	private OrderlistServiceImpl orderserviceimpl;

	/* 주문,배송 전체조회*/
	@RequestMapping("/getOrderList.do")
	public ModelAndView getOrderList(HttpSession session, OrderlistVo vo) {
		ModelAndView mav = new ModelAndView();

		List<OrderlistVo> orderlist = orderserviceimpl.getOrderList(vo);
		List odn = new ArrayList();

		for (int i = 0; i < orderlist.size(); i++) {
			odn.add(i, orderlist.get(i).getOrder_no());
		}

		Set<String> set = new HashSet<String>(odn);
		List<String> newList = new ArrayList<String>(set);

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
		List odn = new ArrayList();

		for (int i = 0; i < orderdetail.size(); i++) {
			odn.add(i, orderdetail.get(i).getOrder_no());
		}

		Set<String> set = new HashSet<String>(odn);
		List<String> odList = new ArrayList<String>(set);

		mav.setViewName("orderdetail");
		mav.addObject("odList", odList);
		mav.addObject("orderdetail", orderdetail);

		return mav;
	}

	/* 전체상품 주문취소 */
	@RequestMapping("/getOrderCancelAll.do")
	@ResponseBody
	public Map<String, Object> getOrderCancelAll(HttpServletRequest request, HttpSession session, OrderlistVo orderVo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<OrderlistVo> num = orderserviceimpl.getOrderList(orderVo);
		map.put("num", num);

		orderserviceimpl.getOrderCancelAll(orderVo);
		return map;
	}

	/* 선택주문취소 test용 */
	@RequestMapping("/getOrderCancel.do")
	@ResponseBody
	public ModelAndView getOrderCancel(HttpServletRequest request, HttpSession session, OrderlistVo orderVo) {
		ModelAndView mav = new ModelAndView();
		
		
		List<OrderlistVo> ordercancel = orderserviceimpl.getOrderDetail(orderVo);
		
		mav.setViewName("ordercancel");
		mav.addObject("ordercancel", ordercancel);
		
		return mav;
	}
}