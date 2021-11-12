package blueup.user.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.OrderlistServiceImpl;
import blueup.user.vo.OrderVo;

@Controller
public class OrderlistController {
	@Autowired
	private OrderlistServiceImpl orderserviceimpl;

	/* 주문,배송조회 */
	@RequestMapping("/getOrderList.do")
	public ModelAndView getOrderList(HttpSession session, OrderVo vo) {
		ModelAndView mav = new ModelAndView();

		List<OrderVo> orderlist = orderserviceimpl.getOrderList(vo);
		List odn = new ArrayList();

		for (int i = 0; i < orderlist.size(); i++) {
			odn.add(i, orderlist.get(i).getOrder_no());
		}

		Set<String> set = new HashSet<String>(odn);
		List<String> newList = new ArrayList<String>(set);

		mav.setViewName("orderlist");
		mav.addObject("newList", newList);
		mav.addObject("orderNum", orderlist);

		return mav;
	}

	/* 주문,배송 상세 조회 */
	@RequestMapping("/getOrderDetail.do")
	public ModelAndView getOrder(HttpSession session, OrderVo vo) {
		ModelAndView mav = new ModelAndView();

		List<OrderVo> orderdetail = orderserviceimpl.getOrderDetail(vo);
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
}