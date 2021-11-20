package blueup.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.OrderServiceImpl;
import blueup.user.vo.CartVo;
import blueup.user.vo.OrderVo;

@Controller
public class OrderController {
	@Autowired
	private OrderServiceImpl orderserviceimpl;

	@RequestMapping("/getOrder.do")
	public ModelAndView getOrder(HttpSession session, OrderVo vo) {
		ModelAndView mav = new ModelAndView();
		List<CartVo> test = (List<CartVo>) session.getAttribute("order");
		for(int i=0; i < test.size(); i++) {
			System.out.println(test.get(i).getProduct_name());
			System.out.println(test.get(i).getMain_image());
			System.out.println(test.get(i).getAll_price());
		}
		List<OrderVo> product = orderserviceimpl.getProduct(vo);
		mav.setViewName("order");
		mav.addObject("product", product);

		return mav;
	}

}
