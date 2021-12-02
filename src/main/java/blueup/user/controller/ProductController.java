package blueup.user.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.vo.ProductVo;
import blueup.user.paging.productCriteria;
import blueup.user.paging.productPageMaker;
import blueup.user.service.ProductServiceImpl;
import blueup.user.vo.Category_detailVo;

@Controller
public class ProductController {
	@Autowired 
	private ProductServiceImpl productserviceimpl;
	
	// ���� ī�װ� ���� ��ǰ ��ȸ
	@RequestMapping("/getProduct.do")
	public ModelAndView getProduct(HttpSession session, HttpServletRequest req, @RequestParam(value="pageNum", defaultValue="1") int pageNum) {
		//return value & �Ķ���� vo ����
		ModelAndView mav = new ModelAndView();
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		
		// ����¡ ����
		productCriteria cri = new productCriteria();
		cri.setPage(pageNum);	// ����������
		cri.setPageStart(); 	// startRow ���� ( ������������ �ѱ�� ���� �� ���)
		System.out.println("�������� ���� :" + cri.getPerPageNum());
		System.out.println("������ ���� :" + cri.getStartRow());
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		
		/////////////////////ȸ��//////////////////////////
		if(!session.getAttribute("userNO").equals("0")) {
			System.out.println("ȸ��");
			System.out.println(session.getAttribute("userNO"));
			// �Ķ���� vo ����
			vo.put("user_no", session.getAttribute("userNO")); // ȸ�� ��ȣ
			vo.put("Selected", session.getAttribute("Selected")); //������ ī�װ�
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("������ �� :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			vo.put("perPageNum", cri.getPerPageNum()); 	// �������� �Խù� ����
			vo.put("startRow", cri.getStartRow());  	// ���� ��ȣ
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			pageMaker.setTotalCount(productserviceimpl.getCountProductDetail(vo)); // �� �Խù� ����
			System.out.println("�� �Խù� ��: " + pageMaker.getTotalCount());

			mav.addObject("check", "bottom");
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList); // ��ü ī�װ� ( �� ��ǰ ��ȸ ȭ�� ī�װ� ������ ����)
			mav.addObject("Selected", cate.getDetailed_category_name()); // ������ ī�װ� 
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
			mav.setViewName("ProductView");
		}
		
		/////////////////////////��ȸ��//////////////////////////
		else {
			System.out.println("��ȸ��");
			
			// �Ķ���� vo ����
			vo.put("user_no", session.getAttribute("userNO"));	// ���� �޼��� ����� ���� ��ȸ���� ��� 0 ����
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("������ �� :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			pageMaker.setTotalCount(productserviceimpl.getCountProductDetail(vo)); // �� �Խù� ����
			System.out.println("�� �Խù� ��: " + pageMaker.getTotalCount());
			
			// ��Ű �� Ȯ�� �� ��ǰ list mav�� �߰�
			List<ProductVo> productValue = productserviceimpl.getProductListByDetailedCategory(vo);
			Cookie cookies[] = req.getCookies(); // ��Ű ����Ʈ ���
			String[] p_no = null;				 // ��ǰ ��ȣ ����Ʈ
			
			//��Ű�� Ȯ��
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
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(p == ""){
							continue;
						}
						if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
						}
					}
				}
			}
			mav.addObject("check", "bottom");
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getDetailed_category_name());
			mav.addObject("Product", productValue); // ��Ű�� �ݿ��� ��ǰ ���� ����
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	// ���� ī�װ� ���� ��ü ��ǰ ��ȸ
	@RequestMapping("/getProductAll.do")
	public ModelAndView getProductByDetail(HttpSession session,  HttpServletRequest req, @RequestParam(value="pageNum", defaultValue="1") int pageNum) {
		// return �� & �Ķ���� vo ����
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		ModelAndView mav = new ModelAndView();
		
		// ����¡ ����
		productCriteria cri = new productCriteria();
		cri.setPage(pageNum);
		cri.setPageStart();
		System.out.println("�������� ���� :" + cri.getPerPageNum());
		System.out.println("������ ���� :" + cri.getStartRow());
		
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		/////////////////////////ȸ��//////////////////////////
		if(!session.getAttribute("userNO").equals("0")) {
			System.out.println("ȸ��-����ī��");
			System.out.println(session.getAttribute("userNO"));
			
			// �Ķ���� vo ����
			vo.put("user_no", session.getAttribute("userNO"));
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("���� ī�װ� �� : " + cate.getCategory_name());
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			pageMaker.setTotalCount(productserviceimpl.getCountProduct(vo));
			System.out.println("�ѰԽù���: " + pageMaker.getTotalCount());
			
			// ���� �� ����
			mav.addObject("check", "top");
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo)); // ���� ī�װ� ���� ��ǰ & wishlist
			mav.setViewName("ProductView");
		}else {
			/////////////////////////��ȸ��//////////////////////////
			System.out.println("��ȸ��-����ī��");
			
			//�Ķ���� vo ����
			vo.put("user_no", session.getAttribute("userNO"));
			vo.put("Selected", session.getAttribute("Selected"));
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("���� ī�װ� �� : " + cate.getCategory_name());
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			pageMaker.setTotalCount(productserviceimpl.getCountProduct(vo)); // �� �Խù� ����
			System.out.println("�� �Խù� ��: " + pageMaker.getTotalCount());
			
			// ��Ű �� Ȯ�� �� ��ǰ list mav�� �߰�
			List<ProductVo> productValue = productserviceimpl.getProductListByCategory(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			
			//��Ű�� Ȯ��
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
			
			// ��Ű �� == ��ǰ��ȣ wish no ���� 
			if(!ArrayUtils.isEmpty(p_no)) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(p == ""){
							continue;
						}else{
							if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
							System.out.println(p);
							}
						}
					}
				}
			}
			// ���ϰ� ����
			mav.addObject("check", "top");
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getCategory_name());
			mav.addObject("Product", productValue);
			mav.setViewName("ProductView");
		}
		return mav;
	}

	
	//////////// ȸ�� wish//////////////
	@RequestMapping("/getWishList.do")
	public ModelAndView getProductListBywishList(@RequestParam(value="user_no", required=false) String user_no, HttpServletRequest req, HttpServletResponse repo) {
		System.out.println("���ø���Ʈ ��������");
		System.out.println(user_no);
		ModelAndView mav = new ModelAndView();
		// ���ϰ� ����
		if( user_no != null) {
			mav.addObject("wishList", productserviceimpl.getProductListBywishList(user_no));
			mav.setViewName("wish");
		}else {
			List<ProductVo> product = productserviceimpl.getProductList();
			
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			List<ProductVo> productValue = new ArrayList<ProductVo>();
			
			// ��Ű �� Ȯ�� 
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
			// ��Ű �� == ��ǰ��ȣ wish no ���� 
			if(!ArrayUtils.isEmpty(p_no)) {
				for(int i =0; i < product.size(); i++) {
					for(String p : p_no) {
						if(p == ""){
							continue;
						}else{
							if (Integer.parseInt(p) == product.get(i).getProduct_no()) {
								product.get(i).setWish_no(1);
								productValue.add(product.get(i));
							}
						}
					}
				}
			}
			mav.addObject("wishList", productValue);
			mav.setViewName("wish");
		}
		return mav;
	}
	
	/* ��ǰ ��ȸ�� */
	@RequestMapping("/updateViewCount.do")
	@ResponseBody
	public int updateViewCount(ProductVo vo) {
		return productserviceimpl.updateViewCount(vo);
	}
	
	/* ���� ��ǰ ��ȸ*/
	@RequestMapping("/getSaleProduct.do")
	public ModelAndView getSaleProduct(@RequestParam(value="user_no", required=false)String user_no, 
			@RequestParam(value="pageNum", defaultValue="1")int pageNum, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		productCriteria cri = new productCriteria();
		System.out.println(user_no);
		cri.setPage(pageNum);
		cri.setPageStart();
		System.out.println("�������� ���� :" + cri.getPerPageNum());
		System.out.println("������ ���� :" + cri.getStartRow());
		
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		
		if(user_no != null) {
			HashMap<Object, Object> vo = new HashMap<Object, Object>();
			vo.put("user_no", user_no);
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			
			pageMaker.setTotalCount(productserviceimpl.getSaleProductCount());
			System.out.println("�ѰԽù���: " + pageMaker.getTotalCount());
			
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", "SALES");
			mav.addObject("Product", productserviceimpl.getSaleProduct(vo));
			mav.setViewName("ProductViewForSale");
		}else {
			HashMap<Object, Object> vo = new HashMap<Object, Object>();
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			
			pageMaker.setTotalCount(productserviceimpl.getSaleProductCount());
			System.out.println("�ѰԽù���: " + pageMaker.getTotalCount());
			
			List<ProductVo> productValue = productserviceimpl.getSaleProductNonMember(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			
			//��Ű�� Ȯ��
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
			
			// ��Ű �� == ��ǰ��ȣ wish no ���� 
			if(!ArrayUtils.isEmpty(p_no)) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(p == ""){
							continue;
						}else{
							if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
							System.out.println(p);
							}
						}
					}
				}
			}
			
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", "SALES");
			mav.addObject("Product", productValue);
			mav.setViewName("ProductViewForSale");
		}
		return mav;
	}
	
}
