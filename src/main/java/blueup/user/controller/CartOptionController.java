package blueup.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.CartOptionServiceImpl;
import blueup.user.vo.CartOptionVo;

@Controller
public class CartOptionController {

	@Autowired
	private CartOptionServiceImpl cartoptionserviceimpl;
	
	@RequestMapping("/getCartOption.do")
	@ResponseBody
	public ModelAndView getCartOption(CartOptionVo vo) {
		ModelAndView mav = new ModelAndView();
		System.out.println(vo.getProduct_no());
		List<CartOptionVo> test = cartoptionserviceimpl.cartOption(vo);
		
		// 컬러 중복 제거
		List<String> color = new ArrayList<String>();
		for(int i=0; i < test.size(); i++) {
			if(!color.contains(test.get(i).getProduct_color())) {
				color.add(test.get(i).getProduct_color());
			}
		}
		
		// 사이즈 중복 제거
		List<String> size = new ArrayList<String>();
		for(int i=0; i < test.size(); i++) {
			if(!size.contains(test.get(i).getProduct_size())) {
				size.add(test.get(i).getProduct_size());
				System.out.println(test.get(i).getProduct_size());
			}
		}
		
		mav.addObject("data", cartoptionserviceimpl.cartOption(vo));
		mav.addObject("color", color);
		mav.addObject("size", size);
		mav.setViewName("cartOption");
		return mav;
		
	}
	
}
