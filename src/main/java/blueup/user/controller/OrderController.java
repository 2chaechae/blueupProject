package blueup.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.OrderServiceImpl;
import blueup.user.vo.OrderVo;

@Controller
public class OrderController {
	@Autowired
	private OrderServiceImpl orderserviceimpl;

	@RequestMapping("/getOrder.do")
	public ModelAndView getOrder(HttpSession session, OrderVo vo) {
		ModelAndView mav = new ModelAndView();

		List<OrderVo> product = orderserviceimpl.getProduct(vo);
		mav.setViewName("order");
		mav.addObject("product", product);

		return mav;
	}

}
