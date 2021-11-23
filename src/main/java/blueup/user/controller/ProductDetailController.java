package blueup.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.vo.ProductVo;
import blueup.user.paging.ReviewCriteria;
import blueup.user.paging.ReviewPageMaker;
import blueup.user.paging.productPageMaker;
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
	public ModelAndView selectProductDetail(@RequestParam(value="product_no") String product_no, @RequestParam(value="user_no") String user_no,
			@RequestParam(value="page_no", defaultValue="1") int page_no, @RequestParam(value="star", required=false) String star ) {
		
		System.out.println("ȸ�� ��ǰ��");
		ModelAndView mav = new ModelAndView();
		
		// ��ǰ vo ����
		ProductDetailVo vo_p = new ProductDetailVo();
		vo_p.setProduct_no(Integer.parseInt(product_no));
		vo_p.setUser_no(Integer.parseInt(user_no)); 
		
		// ���� vo ���� �� ����¡, �� ����
		HashMap<String, Object> vo = new HashMap<String, Object>();
			ReviewCriteria cri = new ReviewCriteria();
			cri.setPage(page_no);	// ����������
			cri.setPageStart(); 	// startRow ���� ( ������������ �ѱ�� ���� �� ���)
			System.out.println("�������� ���� :" + cri.getPerPageNum());
			System.out.println("������ ���� :" + cri.getStartRow());
			
			ReviewPageMaker pageMaker = new ReviewPageMaker();
			pageMaker.setCri(cri);
			
			/*���� ���� ��ȸ���� �ƴ��� ����*/
			List<ReviewVo> reviewList = new ArrayList<ReviewVo>();
			System.out.println(star);
			if(star == null) {
				/*�Ϲ� ��ȸ*/
				System.out.println("�Ϲ���ȸ");
				vo.put("perPageNum", cri.getPerPageNum()); 	// �������� �Խù� ����
				vo.put("startRow", cri.getStartRow());  	// ���� ��ȣ
				vo.put("product", Integer.parseInt(product_no));
				
				pageMaker.setTotalCount(productDetailServiceimpl.reviewCount(Integer.parseInt(product_no)));
				System.out.println("�� �Խù� ��: " + pageMaker.getTotalCount());
				
				reviewList = productDetailServiceimpl.selectProductReview(vo);
			}else {
				/*���� ���� ��ȸ*/
				vo.put("perPageNum", cri.getPerPageNum()); 	// �������� �Խù� ����
				vo.put("startRow", cri.getStartRow());  	// ���� ��ȣ
				vo.put("product", Integer.parseInt(product_no));
				vo.put("star", star);
				
				/*�Խù� �� review �������� ���� */
				pageMaker.setTotalCount(productDetailServiceimpl.reviewCountByStar(vo));
				System.out.println("�� �Խù� ��: " + pageMaker.getTotalCount());
				
				reviewList = productDetailServiceimpl.selectReviewByStar(vo);
			}
		if(reviewList.size() == 0) {
			System.out.println("review null");
			mav.addObject("review", null);
		}else {
			System.out.println("review null �ƴ�");
			mav.addObject("review", reviewList);
		}
		
		// color, size list ���� �ޱ�
		List<ProductDetailVo> p =  productDetailServiceimpl.selectProductDetail(vo_p);
		String[] color = p.get(0).getProduct_color().split("/");
		String[] size = p.get(0).getProduct_size().split("/");
		for( String m : size ) {
			System.out.println(m);
		}
		
		mav.addObject("pageNum", page_no);
		mav.addObject("pageMaker", pageMaker);
		mav.addObject("productDetail", productDetailServiceimpl.selectProductDetail(vo_p));
		mav.addObject("banner", productDetailServiceimpl.selectProductBanner());
		mav.addObject("color", color);
		mav.addObject("size", size);
		mav.setViewName("productDetail");
		return mav;
	}
	
	/* ��ǰ �� ��ȸ��*/
	@RequestMapping("/productDetailNonMember.do")
	public ModelAndView selectProductDetailNonMember(HttpServletRequest req, @RequestParam(value="product_no") String product_no, @RequestParam(value="page_no", defaultValue="1") int page_no,
			@RequestParam(value="star", required=false) String star) {
		System.out.println("��ȸ�� ��ǰ��");
		ModelAndView mav = new ModelAndView();
		ProductDetailVo vo = new ProductDetailVo();
		vo.setProduct_no(Integer.parseInt(product_no));
		List<ProductDetailVo> productlist = productDetailServiceimpl.selectProductDetailNonMember(vo);
		
		
		/*��ȸ�� ���ø���Ʈ ���� */
		Cookie cookies[] = req.getCookies(); // ��Ű ����Ʈ ���
		String[] p_no = null;				 // ��ǰ ��ȣ ����Ʈ
		
		//��Ű�� null check �� �迭�� �ֱ�
		for(Cookie c : cookies) {
			if(c.getName().equals("p_list")) {
				System.out.println("��Űüũ");
				String value = c.getValue();
				if(value == "") {
					System.out.println(" ���ڿ�");
					 p_no = null;
				}else {
					p_no = value.split("%2F");
				}
			}
		}
		
		// ���� p_no ���� ��ǰ��ȣ ������, wish no 1(T)�� ����(T/F)
		if(!ArrayUtils.isEmpty(p_no)) {
			for(int i =0; i < p_no.length; i++) {
					if(product_no.equals(p_no[i])){
						for(int j=0; j < productlist.size(); j++) {
							productlist.get(j).setWish_no(1);
					}
				}
			}
		}
		
		// ���� vo ���� �� ����¡, �� ����
		HashMap<String, Object> hash = new HashMap<String, Object>();
			ReviewCriteria cri = new ReviewCriteria();
			cri.setPage(page_no);	// ����������
			cri.setPageStart(); 	// startRow ���� ( ������������ �ѱ�� ���� �� ���)
			System.out.println("�������� ���� :" + cri.getPerPageNum());
			System.out.println("������ ���� :" + cri.getStartRow());
			
			ReviewPageMaker pageMaker = new ReviewPageMaker();
			pageMaker.setCri(cri);
			
			/*���� ���� ��ȸ���� �ƴ��� ����*/
			List<ReviewVo> reviewList = new ArrayList<ReviewVo>();
			System.out.println(star);
			if(star == null) {
				/*�Ϲ� ��ȸ*/
				System.out.println("�Ϲ���ȸ");
				hash.put("perPageNum", cri.getPerPageNum()); 	// �������� �Խù� ����
				hash.put("startRow", cri.getStartRow());  	// ���� ��ȣ
				hash.put("product", Integer.parseInt(product_no));
				
				pageMaker.setTotalCount(productDetailServiceimpl.reviewCount(Integer.parseInt(product_no)));
				System.out.println("�� �Խù� ��: " + pageMaker.getTotalCount());
				
				reviewList = productDetailServiceimpl.selectProductReview(hash);
			}else {
				/*���� ���� ��ȸ*/
				hash.put("perPageNum", cri.getPerPageNum()); 	// �������� �Խù� ����
				hash.put("startRow", cri.getStartRow());  	// ���� ��ȣ
				hash.put("product", Integer.parseInt(product_no));
				hash.put("star", star);
				
				/*�Խù� �� review �������� ���� */
				pageMaker.setTotalCount(productDetailServiceimpl.reviewCountByStar(hash));
				System.out.println("�� �Խù� ��: " + pageMaker.getTotalCount());
				
				reviewList = productDetailServiceimpl.selectReviewByStar(hash);
			}
		if(reviewList.size() == 0) {
			System.out.println("review null");
			mav.addObject("review", null);
		}else {
			System.out.println("review null �ƴ�");
			mav.addObject("review", reviewList);
		}
		
		// color, size list ���� �ޱ�
		List<ProductDetailVo> p =  productDetailServiceimpl.selectProductDetailNonMember(vo);
		String[] color = p.get(0).getProduct_color().split("/");
		String[] size = p.get(0).getProduct_size().split("/");
		for( String m : size ) {
			System.out.println(m);
		}
		
		System.out.println("���ÿϷ�");
		mav.addObject("pageNum", page_no);
		mav.addObject("pageMaker", pageMaker);
		mav.addObject("productDetail", productlist);
		mav.addObject("banner", productDetailServiceimpl.selectProductBanner());
		mav.addObject("color", color);
		mav.addObject("size", size);
		mav.setViewName("productDetail");
		System.out.println("���ۿϷ�");
		return mav;
	}
	
	/*��ȸ�� �ֹ�*/
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
	

	/*ȸ�� �ֹ�*/
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
