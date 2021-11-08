package blueup.user.controller;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.vo.ProductVo;
import blueup.user.service.ProductServiceImpl;
import blueup.user.vo.Category_detailVo;

@Controller
public class ProductController {
	@Autowired 
	private ProductServiceImpl productserviceimpl;
	
	// ���� ī�װ� ���� ��ǰ ��ȸ
	@RequestMapping("/getProduct.do")
	public ModelAndView getProduct(HttpSession session) {
		//return value
		ModelAndView mav = new ModelAndView();
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		if(session.getAttribute("userNO") != null) {
			// ȸ�� - ���ø���Ʈ db �̿�
			System.out.println(session.getAttribute("userNO"));
			vo.put("userNO", session.getAttribute("userNO"));
			// ������ ī�װ��� Ȯ�� 
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("������ �� :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			// ����,���� ī�װ� ��Ʈ�� ������
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			// userNo vo�� �ֱ�
			mav.addObject("Category", cateList); // ��ü ī�װ� 
			mav.addObject("Selected", cate.getDetailed_category_name()); // ������ ī�װ� 
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo)); // ���� ī�װ� ���� ��ǰ & wishlist
			mav.setViewName("ProductView");
		}
		
		else {
			// ��ȸ�� - ���ø���Ʈ ��Ű �̿� 
			// ������ ī�װ��� Ȯ�� 
			vo.put("userNO", 0);
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("������ �� :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			// ī�װ� ����Ʈ Ȯ��
			List<Category_detailVo> cateList = (List<Category_detailVo>) session.getAttribute("Category");
			for(Category_detailVo i : cateList) {
				System.out.println(i.getCategory_name());
			}
			// ��ǰ Ȯ��
			List<ProductVo> test1 = productserviceimpl.getProductListByDetailedCategory(vo);
			for(ProductVo m : test1) {
				System.out.println(m.getDetailed_category_name());
			}
			mav.addObject("Category", cateList);
			mav.addObject("Selected", cate.getDetailed_category_name());
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(vo));
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	// ���� ī�װ� ���� ��ü ��ǰ ��ȸ
	@RequestMapping("/getProductAll.do")
	public ModelAndView getProductByDetail(HttpSession session) {
		//return value
		HashMap<Object, Object> vo = new HashMap<Object, Object>();
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userNO") != null) {
			// ȸ�� - ���ø���Ʈ db �̿�
			System.out.println(session.getAttribute("userNO"));
			vo.put("userNO", session.getAttribute("userNO"));
			// ������ ī�װ� �� ��������
			vo.put("Selected", session.getAttribute("Selected"));
			Category_detailVo cate = (Category_detailVo) vo.get("Selected");
			System.out.println("���� ī�װ� �� : " + cate.getCategory_name());
			
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo)); // ���� ī�װ� ���� ��ǰ & wishlist
			mav.setViewName("ProductView");
//		}else {
//			// ��ȸ�� - ���ø���Ʈ ��Ű �̿� 
//			Category_detailVo vo = (Category_detailVo) session.getAttribute("Selected");
//			System.out.println("���� ī�װ� �� : " + vo.getCategory_name());
//			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo));
//			mav.setViewName("ProductView");
//		}
		}
		return mav;
	}
}
