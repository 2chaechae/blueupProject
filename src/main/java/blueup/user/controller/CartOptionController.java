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
		System.out.println("디비디비");
		vo.setProduct_no(79);
		System.out.println(vo.getProduct_no());
		List<CartOptionVo> test = cartoptionserviceimpl.cartOption(vo);
		
		// 컬러 중복 제거
		List<String> color = new ArrayList<String>();
		for(int i=0; i < test.size(); i++) {
			if(!color.contains(test.get(i).getColor()))
				color.add(test.get(i).getColor());
		}
		
		// 사이즈 중복 제거
		List<Integer> size = new ArrayList<Integer>();
		for(int i=0; i < test.size(); i++) {
			if(!size.contains(test.get(i).getClothes_size()))
				size.add(test.get(i).getClothes_size());
		}
		
		mav.addObject("data", cartoptionserviceimpl.cartOption(vo));
		mav.addObject("color", color);
		mav.addObject("size", size);
		mav.setViewName("cartOption");
		return mav;
		
	}
}
