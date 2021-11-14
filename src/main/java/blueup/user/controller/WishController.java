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

	// ���ø���Ʈ �߰��ϱ�
	@RequestMapping("/insertWishList.do")
	public ModelAndView insertWishList(WishListVo vo) {
		System.out.println(vo.getProduct_no());
		System.out.println(vo.getUser_no());
		ModelAndView mav = new ModelAndView();
		wishserviceimpl.insertWishList(vo);
		mav.setViewName("ProductView");
		return mav;
	}

	// ���ø���Ʈ �����ϱ�
	@RequestMapping("/deleteWishList.do")
	@ResponseBody
	public String deleteWishList(WishListVo vo, HttpServletRequest req, HttpServletResponse repo) {
		String result;
		if (vo.getUser_no() > 0) {
			//////////////////ȸ��/////////////////////////
			System.out.println("ȸ��-ī�׻���");
			int num = wishserviceimpl.deleteWishList(vo);
			result = Integer.toString(num);
			System.out.println(result);
		} else {
			//////////////////��ȸ��/////////////////////////
			System.out.println("��ȸ��-ī�׻���");
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			String p_new_no = "";

			// ��Ű �� Ȯ��
			for (Cookie c : cookies) {
				if (c.getName().equals("p_list")) {
					String value = c.getValue();
					p_no = value.split("%2F");
				}
			}
			System.out.println(p_no[0]);
			System.out.println("������ǰ ��ȣ : " + vo.getProduct_no());
			// ��Ű �� == ��ǰ��ȣ wish no ����
			if (p_no != null) {
				for (int i=0; i<p_no.length; i++) {
					System.out.println("��Ű �ξƴ�");
					if (Integer.parseInt(p_no[i]) != vo.getProduct_no()) {
							p_new_no += p_no[i];
							p_new_no += "%2F";
					}
				}
				System.out.println("���ο� ����Ʈ" + p_new_no);
			}
			String check[] = p_new_no.split("%2F");
			for(String m : check) {
				System.out.println(m);
			}
			System.out.println("check" + check.length);
			System.out.println("p_no" + p_no.length );
			if(p_no.length > check.length || check == null) {
				Cookie cookie = new Cookie("p_list", null);
				repo.addCookie(cookie);
				System.out.println("��Ű����");
				cookie = new Cookie("p_list", p_new_no);
				repo.addCookie(cookie);
				System.out.println("��Ű�߰�");
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