package blueup.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.vo.ProductVo;
import blueup.user.service.WishServiceImpl;
import blueup.user.vo.WishListVo;

@Controller
public class WishController {
	
	@Autowired
	private WishServiceImpl wishserviceimpl;
	
	// 위시리스트 추가하기
	@RequestMapping("/insertWishList.do")
	public ModelAndView insertWishList(WishListVo vo) {
		System.out.println(vo.getProduct_no());
		System.out.println(vo.getUser_no());
		ModelAndView mav = new ModelAndView();
		wishserviceimpl.insertWishList(vo);
		mav.setViewName("ProductView");
		return mav;
	}
	
	// 위시리스트 삭제하기
	@RequestMapping("/deleteWishList.do")
	@ResponseBody
	public String deleteWishList(WishListVo vo, HttpServletRequest req) {
		String result;
		if(vo.getUser_no() > 0) {
			System.out.println("회원-카테삭제");
			int num = wishserviceimpl.deleteWishList(vo);
			result = Integer.toString(num);
			System.out.println(result);
		}else {
			System.out.println("비회원-카테삭제");
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			String p_new_no = null;
			
			// 쿠키 값 확인 
			for(Cookie c : cookies) {
				if(c.getName().equals("product")) {
					String value = c.getValue();
					p_no = value.split("%2C");
				}
			}
			
			// 쿠키 값 == 상품번호 wish no 수정 
			if(p_no != null) {
				for(int i =0; i < p_no.length; i++) {
					for(String p : p_no) {
						if(Integer.parseInt(p) != vo.getProduct_no()) {
							p_new_no += p_no[i] + ",";
						}
					}
					System.out.println(p_new_no);
				}
			}
			Cookie cookie = new Cookie("product", p_new_no);
			result = "1";

		}
		return result;
	}
}
