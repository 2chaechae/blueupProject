package blueup.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.ProductDetailServiceImpl;
import blueup.user.vo.CartVo;
import blueup.user.vo.ProductDetailVo;
import blueup.user.vo.ReviewVo;

@Controller
public class ProductDetailController {

	@Autowired
	ProductDetailServiceImpl productDetailServiceimpl;
	
	/* ��ǰ �� ȸ��*/
	@RequestMapping("/productDetail.do")
	public ModelAndView selectProductDetail(@RequestParam(value="product_no") String product_no, @RequestParam(value="user_no") String user_no) {
		System.out.println("ȸ�� ��ǰ��");
		ModelAndView mav = new ModelAndView();
		
		// ��ǰ vo ����
		ProductDetailVo vo_p = new ProductDetailVo();
		vo_p.setProduct_no(Integer.parseInt(product_no));
		vo_p.setUser_no(Integer.parseInt(user_no)); 
		
		// ���� vo ���� �� �� ����
		ReviewVo vo_r = new ReviewVo();	
		vo_r.setProduct_no(Integer.parseInt(product_no));
		List<ReviewVo> test = productDetailServiceimpl.selectProductReview(vo_r);
		if(test.size() == 0) {
			System.out.println("review null");
			mav.addObject("review", null);
		}else {
			System.out.println("review null �ƴ�");
			mav.addObject("review", productDetailServiceimpl.selectProductReview(vo_r));
		}
		
		// ǰ�� ���� Ȯ�� �� color, size list ���� �ޱ�
		List<ProductDetailVo> p =  productDetailServiceimpl.selectProductDetail(vo_p);
		String[] color = p.get(0).getProduct_color().split("/");
		String[] size = p.get(0).getProduct_size().split("/");
		for( String m : size ) {
			System.out.println(m);
		}
		
		mav.addObject("productDetail", productDetailServiceimpl.selectProductDetail(vo_p));
		mav.addObject("banner", productDetailServiceimpl.selectProductBanner());
		mav.addObject("color", color);
		mav.addObject("size", size);
		mav.setViewName("productDetail");
		return mav;
	}
	
	/* ��ǰ �� ��ȸ��*/
	@RequestMapping("/productDetailNonMember.do")
	public ModelAndView selectProductDetailNonMember(HttpSession session, @RequestParam(value="product_no") String product_no) {
		ModelAndView mav = new ModelAndView();
		
		
		return mav;
		
	}
	
	/*��ٱ��� ��ȸ��*/
	@RequestMapping("/addCartNonMemberOne.do")
	@ResponseBody
	public int addCartNonMemberOne(CartVo vo, HttpSession session) {
		int result = 0;
		System.out.println("��ȸ�� �ֹ��̵�");
			if(vo != null) {
				System.out.println(vo.getProduct_color());
				List<CartVo> list = new ArrayList<CartVo>();
				list.add(vo);
				session.setAttribute("orderNonMember", list);
				result = 1; 
			}
		return result;
	}
	

	/*��ٱ��� ȸ��*/
	@RequestMapping("/addCartOne.do")
	@ResponseBody
	public int addCartOne(CartVo vo, HttpSession session) {
		int result = 0;
		System.out.println("ȸ�� �ֹ��̵�");
			if(vo != null) {
				System.out.println(vo.getProduct_color());
				List<CartVo> list = new ArrayList<CartVo>();
				list.add(vo);
				session.setAttribute("order", list);
				result = 1; 
			}
		return result;
	}
}
