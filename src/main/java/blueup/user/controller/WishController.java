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
			System.out.println("ȸ��-ī�׻���");
			int num = wishserviceimpl.deleteWishList(vo);
			result = Integer.toString(num);
			System.out.println(result);
		} else {
			System.out.println("��ȸ��-ī�׻���");
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			String p_new_no = "";

			// ��Ű �� Ȯ��
			for (Cookie c : cookies) {
				if (c.getName().equals("product")) {
					String value = c.getValue();
					p_no = value.split("%2C");
				}
			}
			System.out.println("������ǰ ��ȣ : " + vo.getProduct_no());
			// ��Ű �� == ��ǰ��ȣ wish no ����
			if (p_no != null) {
				for (int i=0; i<p_no.length; i++) {
					if (Integer.parseInt(p_no[i]) != vo.getProduct_no()) {
						if(i != p_no.length-1) p_new_no += p_no[i] + ",";
						else p_new_no += p_no[i];
					}
				}
				System.out.println(p_new_no);
			}
			String check[] = p_new_no.split(",");
			if(p_no.length > check.length) {
				Cookie cookie = new Cookie("product", p_new_no);
				repo.addCookie(cookie);
				result = "1";
			}else {
				result = "0";
			}
		}
		return result;
	}

}
