package blueup.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.service.AdminOrderServiceImpl;
import blueup.user.vo.OrderlistVo;

@Controller
public class AdminOrderController {
	@Autowired
	AdminOrderServiceImpl orderserviceimpl;

	/* 주문,배송 전체조회 */
	@RequestMapping("/getOrderManagement.mdo")
	public ModelAndView getOrderManagement(HttpSession session, OrderlistVo orderlistvo) {
		ModelAndView mav = new ModelAndView();

		List<OrderlistVo> orderlist = orderserviceimpl.getOrderList(orderlistvo);

		mav.setViewName("adminOrder");
		mav.addObject("orderlist", orderlist);
		return mav;
	}
	
	/* 주문,배송 상세조회 */
	@RequestMapping("/getOrderDetail.mdo")
	public ModelAndView getOrderDetail(HttpSession session, OrderlistVo orderlistvo) {
		ModelAndView mav = new ModelAndView();

		List<OrderlistVo> orderdetail = orderserviceimpl.getOrderProduct(orderlistvo);

		mav.setViewName("adminOrderDetail");
		mav.addObject("orderdetail", orderdetail);
		return mav;
	}

	/* 배송준비중 */
	@RequestMapping("/getDeliveryPreparing.mdo")
	@ResponseBody
	public String getDeliveryPreparing(String str) {
		String[] order_detail_no_str = str.split(",");
		List<Integer> order_detail_no = new ArrayList<Integer>();

		for (int i = 0; i < order_detail_no_str.length; i++) {
			order_detail_no.add(Integer.parseInt(order_detail_no_str[i]));
		}

		for (int i = 0; i < order_detail_no.size(); i++) {
			orderserviceimpl.getDeliveryPreparing(order_detail_no.get(i));
		}
		String preparing = "배송준비중";

		return preparing;

	}

	/* 배송중 */
	@RequestMapping("/getDeliveryShipping.mdo")
	@ResponseBody
	public String getDeliveryShipping(String str) {
		String[] order_detail_no_str = str.split(",");
		List<Integer> order_detail_no = new ArrayList<Integer>();

		for (int i = 0; i < order_detail_no_str.length; i++) {
			order_detail_no.add(Integer.parseInt(order_detail_no_str[i]));
		}

		for (int i = 0; i < order_detail_no.size(); i++) {
			orderserviceimpl.getDeliveryShipping(order_detail_no.get(i));
		}
		String preparing = "배송중";

		return preparing;

	}

	/* 배송완료 */
	@RequestMapping("/getDeliveryComplete.mdo")
	@ResponseBody
	public String getDeliveryComplete(String str) {
		String[] order_detail_no_str = str.split(",");
		List<Integer> order_detail_no = new ArrayList<Integer>();

		for (int i = 0; i < order_detail_no_str.length; i++) {
			order_detail_no.add(Integer.parseInt(order_detail_no_str[i]));
		}

		for (int i = 0; i < order_detail_no.size(); i++) {
			orderserviceimpl.getDeliveryComplete(order_detail_no.get(i));
		}
		String preparing = "배송완료";

		return preparing;
	}

	/* 배송지연 */
	@RequestMapping("/getDeliveryDelay.mdo")
	@ResponseBody
	public String getDeliveryDelay(String str) {
		String[] order_detail_no_str = str.split(",");
		List<Integer> order_detail_no = new ArrayList<Integer>();

		for (int i = 0; i < order_detail_no_str.length; i++) {
			order_detail_no.add(Integer.parseInt(order_detail_no_str[i]));
		}

		for (int i = 0; i < order_detail_no.size(); i++) {
			orderserviceimpl.getDeliveryDelay(order_detail_no.get(i));
		}
		String preparing = "배송지연";

		return preparing;
	}

	/* 반품수거중 */
	@RequestMapping("/getReturnShipping.mdo")
	@ResponseBody
	public String getReturnShipping(String str) {
		String[] order_detail_no_str = str.split(",");
		List<Integer> order_detail_no = new ArrayList<Integer>();

		for (int i = 0; i < order_detail_no_str.length; i++) {
			order_detail_no.add(Integer.parseInt(order_detail_no_str[i]));
		}

		for (int i = 0; i < order_detail_no.size(); i++) {
			orderserviceimpl.getReturnShipping(order_detail_no.get(i));
		}
		String preparing = "반품수거중";

		return preparing;
	}

	/* 반품수거완료 */
	@RequestMapping("/getReturnComplete.mdo")
	@ResponseBody
	public String getReturnComplete(String str) {
		String[] order_detail_no_str = str.split(",");
		List<Integer> order_detail_no = new ArrayList<Integer>();

		for (int i = 0; i < order_detail_no_str.length; i++) {
			order_detail_no.add(Integer.parseInt(order_detail_no_str[i]));
		}

		for (int i = 0; i < order_detail_no.size(); i++) {
			orderserviceimpl.getReturnComplete(order_detail_no.get(i));
		}
		String preparing = "반품수거완료";

		return preparing;
	}

	/* 교환수거중 */
	@RequestMapping("/getExchangeCollectionShipping.mdo")
	@ResponseBody
	public String getExchangeCollectionShipping(String str) {
		String[] order_detail_no_str = str.split(",");
		List<Integer> order_detail_no = new ArrayList<Integer>();

		for (int i = 0; i < order_detail_no_str.length; i++) {
			order_detail_no.add(Integer.parseInt(order_detail_no_str[i]));
		}

		for (int i = 0; i < order_detail_no.size(); i++) {
			orderserviceimpl.getExchangeCollectionShipping(order_detail_no.get(i));
		}
		String preparing = "교환수거중";

		return preparing;
	}

	/* 교환수거완료 */
	@RequestMapping("/getExchangeCollectionComplete.mdo")
	@ResponseBody
	public String getExchangeCollectionComplete(String str) {
		String[] order_detail_no_str = str.split(",");
		List<Integer> order_detail_no = new ArrayList<Integer>();

		for (int i = 0; i < order_detail_no_str.length; i++) {
			order_detail_no.add(Integer.parseInt(order_detail_no_str[i]));
		}

		for (int i = 0; i < order_detail_no.size(); i++) {
			orderserviceimpl.getExchangeCollectionComplete(order_detail_no.get(i));
		}
		String preparing = "교환수거완료";

		return preparing;
	}

}
