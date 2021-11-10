package blueup.user.controller;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.vo.ProductVo;
import blueup.user.paging.PageMaker;
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
		//return value
		ModelAndView mav = new ModelAndView();
		// ������ �� 
		productCriteria cri = new productCriteria();
		cri.setPage(pageNum);
		cri.setPageStart();
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		
		// �ѻ�ǰ ����
		pageMaker.setTotalCount(productserviceimpl.getCountProduct());
		System.out.println("�Ѱ��ù���: " + pageMaker.getTotalCount());
		System.out.println("�������� ���� :" + cri.getPerPageNum());
		System.out.println("������ ���� :" + cri.getStartRow());
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		if(session.getAttribute("userNO") != null) {
			/////////////////////////ȸ��//////////////////////////
			System.out.println("ȸ��");
			System.out.println(session.getAttribute("userNO"));
			vo.put("userNO", session.getAttribute("userNO"));
			// ������ ī�װ��� Ȯ�� 
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("������ �� :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			// ����Ʈ �ѹ� 
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			// ����,���� ī�װ� ��Ʈ�� ������
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			// userNo vo�� �ֱ�
			
			List<ProductVo> test = productserviceimpl.getProductListByDetailedCategory(vo);
			for(ProductVo m : test) {
				System.out.println(m.getProduct_name());
			}
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList); // ��ü ī�װ� 
			mav.addObject("Selected", cate.getDetailed_category_name()); // ������ ī�װ� 
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo)); // ���� ī�װ� ���� ��ǰ & wishlist
			mav.setViewName("ProductView");
		}
		
		else {
			/////////////////////////��ȸ��//////////////////////////
			System.out.println("��ȸ��");
			vo.put("userNO", 0);
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("������ �� :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			
			// ī�װ� ����Ʈ Ȯ��
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			for(Category_detailVo i : cateList) {
				System.out.println(i.getCategory_name());
			}
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			
			// ��Ű �� Ȯ�� �� ��ǰlist mav�� �߰�
			List<ProductVo> productValue = productserviceimpl.getProductListByDetailedCategory(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			// ��Ű �� Ȯ�� 
			for(Cookie c : cookies) {
				if(c.getName().equals("product")) {
					String value = c.getValue();
					p_no = value.split("%2C");
				}
			}
			
			// ��Ű �� == ��ǰ��ȣ wish no ���� 
			if(p_no != null) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
						}
					}
				}
			}
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getDetailed_category_name());
			mav.addObject("Product", productValue);
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	// ���� ī�װ� ���� ��ü ��ǰ ��ȸ
	@RequestMapping("/getProductAll.do")
	public ModelAndView getProductByDetail(HttpSession session,  HttpServletRequest req, @RequestParam(value="pageNum", defaultValue="1") int pageNum) {
		
		productCriteria cri = new productCriteria();
		cri.setPage(pageNum);
		cri.setPageStart();
		productPageMaker pageMaker = new productPageMaker();
		pageMaker.setCri(cri);
		
		// �ѻ�ǰ ����
		pageMaker.setTotalCount(productserviceimpl.getCountProduct());
		System.out.println("�Ѱ��ù���: " + pageMaker.getTotalCount());
		System.out.println("�������� ���� :" + cri.getPerPageNum());
		System.out.println("������ ���� :" + cri.getStartRow());
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		ModelAndView mav = new ModelAndView();
		
		if(session.getAttribute("userNO") != null) {
			/////////////////////////ȸ��//////////////////////////
			System.out.println(session.getAttribute("userNO"));
			vo.put("userNO", session.getAttribute("userNO"));
			// ������ ī�װ� �� ��������
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("���� ī�װ� �� : " + cate.getCategory_name());
			vo.put("perPageNum", cri.getPerPageNum());
			vo.put("startRow", cri.getStartRow());
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo)); // ���� ī�װ� ���� ��ǰ & wishlist
			mav.setViewName("ProductView");
		}else {
			/////////////////////////��ȸ��//////////////////////////
			System.out.println("��ȸ��");
			vo.put("userNO", 0);
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("���� ī�װ� �� : " + cate.getCategory_name());
			
			// ī�װ� ����Ʈ Ȯ��
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			for(Category_detailVo i : cateList) {
				System.out.println(i.getCategory_name());
			}
			
			// ��Ű �� Ȯ�� �� ��ǰlist mav�� �߰�
			List<ProductVo> productValue = productserviceimpl.getProductListByCategory(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			// ��Ű �� Ȯ�� 
			for(Cookie c : cookies) {
				if(c.getName().equals("product")) {
					String value = c.getValue();
					p_no = value.split("%2C");
				}
			}
			
			// ��Ű �� == ��ǰ��ȣ wish no ���� 
			if(p_no != null) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
						}
					}
				}
			}
			mav.addObject("pageNum", pageNum);
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getCategory_name());
			mav.addObject("Product", productValue);
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	@RequestMapping("/infinity.do")
	@ResponseBody
	public ModelAndView infinity(Integer id, String category_name, String detailed_category_name, Integer start, Integer end, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("jsonView");
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		System.out.println("���̵�" + id);
		System.out.println("ī�װ�" + category_name);
		System.out.println("������" + detailed_category_name);
		System.out.println("����" + start);
		System.out.println("��" + end);
		if(id >= 0) {
			/////////////////////////ȸ��//////////////////////////
			System.out.println("ȸ��");
			vo.put("userNO", id);
			// ������ ī�װ��� Ȯ�� 
			Category_detailVo cate = new Category_detailVo();
			
			if(detailed_category_name == null) {
				System.out.println("����ī��");
				cate.setCategory_name(category_name);
				vo.put("Selected", cate);
				vo.put("start", start);
				vo.put("end", end);
				mav.addObject("Product", productserviceimpl.getProductListByCategory(vo));
				List<ProductVo> t = productserviceimpl.getProductListByCategory(vo);
				for(ProductVo m : t) {
					System.out.println(m.getProduct_name());
				}
			}else {
				System.out.println("������");
				cate.setCategory_name(category_name);
				cate.setDetailed_category_name(detailed_category_name);
				vo.put("Selected", cate);
				vo.put("start", start);
				vo.put("end", end);
				mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
				List<ProductVo> t = productserviceimpl.getProductListByDetailedCategory(vo);
				for(ProductVo m : t) {
					System.out.println(m.getProduct_name());
				}
				mav.setViewName("ProductView");
			}
			
		}else {
			/////////////////////////��ȸ��//////////////////////////
			System.out.println("��ȸ��");
			vo.put("userNO", 0);
			
			Category_detailVo cate = new Category_detailVo();
			
			if(detailed_category_name == null) {
				cate.setCategory_name(category_name);
				vo.put("Selected", cate);
				vo.put("start", start);
				vo.put("end", end);
				mav.addObject("Product", productserviceimpl.getProductListByCategory(vo));
			}else {
				cate.setCategory_name(category_name);
				cate.setDetailed_category_name(detailed_category_name);
				vo.put("Selected", cate);
				vo.put("start", start);
				vo.put("end", end);
				mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
			}
			
			// ��Ű �� Ȯ�� �� ��ǰlist mav�� �߰�
			List<ProductVo> productValue = productserviceimpl.getProductListByDetailedCategory(vo);
			Cookie cookies[] = req.getCookies();
			String[] p_no = null;
			// ��Ű �� Ȯ�� 
			for(Cookie c : cookies) {
				if(c.getName().equals("product")) {
					String value = c.getValue();
					p_no = value.split("%2C");
				}
			}
			
			// ��Ű �� == ��ǰ��ȣ wish no ���� 
			if(p_no != null) {
				for(int i =0; i < productValue.size(); i++) {
					for(String p : p_no) {
						if(Integer.parseInt(p) == productValue.get(i).getProduct_no()) {
							productValue.get(i).setWish_no(1);
						}
					}
				}
			}
			mav.addObject("Product", productValue);
			mav.setViewName("ProductView");
		}
		List<ProductVo> p = (List<ProductVo>) mav.getModel().get("Product");
		return mav;
	}
	
	@RequestMapping("/getWishList.do")
	public ModelAndView getProductListBywishList(String userid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("wishList", productserviceimpl.getProductListBywishList(userid));
		mav.setViewName("wish");
		return mav;
	}
}
