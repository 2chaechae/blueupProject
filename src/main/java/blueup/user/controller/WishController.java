package blueup.user.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
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
	public String deleteWishList(WishListVo vo, HttpServletRequest req, HttpServletResponse repo) {
		String result;
		if (vo.getUser_no() > 0) {
			//////////////////회원/////////////////////////
			System.out.println("회원-카테삭제");
			int num = wishserviceimpl.deleteWishList(vo);
			result = Integer.toString(num);
			System.out.println(result);
		} else {
			//////////////////비회원/////////////////////////
			System.out.println("비회원-카테삭제");
			Cookie cookies[] = req.getCookies();
			/* p_no : 쿠키 안에 상품번호 spilt할 리스트
			 * p_new_no : 새로운 쿠키 리스트 */
			
			String[] p_no = null;
			String p_new_no = "";

			// 쿠키 값 확인
			for (Cookie c : cookies) {
				if (c.getName().equals("p_list")) {
					String value = c.getValue();
					p_no = value.split("%2F");
				}
			}
			System.out.println("삭제상품 번호 : " + vo.getProduct_no());
			// 쿠키 값 == 상품번호 wish no 수정
			if (p_no != null) {
				for(String p : p_no) {
					if(p == ""){
						continue;
					}else{
						if (Integer.parseInt(p) != vo.getProduct_no()) {
						p_new_no += p;
						p_new_no += "%2F";
					}
				}
			}
				System.out.println("새로운 리스트" + p_new_no);
			}
			String check[] = p_new_no.split("%2F");
			for(String m : check) {
				System.out.println(m);
			}
			System.out.println("check" + check.length);
			System.out.println("p_no" + p_no.length );
			if(p_no.length > check.length || check.length == 1 && p_no.length == 1) {
				Cookie cookie = new Cookie("p_list", null);
				repo.addCookie(cookie);
				System.out.println("쿠키삭제");
				cookie = new Cookie("p_list", p_new_no);
				repo.addCookie(cookie);
				System.out.println("쿠키추가");
				result = "1";
			}else {
				result = "0";
			}
		}
		return result;
	}
	
	@RequestMapping("/deleteWishAll.do")
	@ResponseBody
	public String deleteWishAll(WishListVo vo, HttpServletRequest req, HttpServletResponse repo) {
		int result = 0;
		if(vo.getUser_no() > 0) {
			result = wishserviceimpl.deleteWishListAll(vo);
		}else {
			Cookie cookie = new Cookie("p_list", null);
			repo.addCookie(cookie);
			result = 1; 
		}
		return Integer.toString(result);
	}

}
