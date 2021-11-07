package blueup.user.controller;
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
		if(session.getAttribute("userNO") != null) {
			// ȸ�� - ���ø���Ʈ db �̿�
			System.out.println(session.getAttribute("userNO"));
			// ������ ī�װ��� Ȯ�� 
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("������ �� :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			// ����,���� ī�װ� ��Ʈ�� ������
			List<Category_detailVo> test = (List<Category_detailVo>) session.getAttribute("Category");
			// userNo vo�� �ֱ�
			
			mav.addObject("Category", test); // ��ü ī�װ� 
			mav.addObject("Selected", cate.getDetailed_category_name()); // ������ ī�װ� 
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(cate)); // ���� ī�װ� ���� ��ǰ & wishlist
			mav.setViewName("ProductView");
		}
		
		else {
			// ��ȸ�� - ���ø���Ʈ ��Ű �̿� 
			Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("������ �� :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
			List<Category_detailVo> test = (List<Category_detailVo>) session.getAttribute("Category");
			for(Category_detailVo i : test) {
				System.out.println(i.getCategory_name());
			}
			List<ProductVo> test1 = productserviceimpl.getProductListByDetailedCategory(cate);
			for(ProductVo m : test1) {
				System.out.println(m.getDetailed_category_name());
			}
			mav.addObject("Category", test);
			mav.addObject("Selected", cate.getDetailed_category_name());
			mav.addObject("Product", productserviceimpl.getProductListByDetailedCategory(cate));
			mav.setViewName("ProductView");
		}
		return mav;
	}
	
	// ���� ī�װ� ���� ��ü ��ǰ ��ȸ
	@RequestMapping("/getProductAll.do")
	public ModelAndView getProductByDetail(HttpSession session) {
		//return value
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userNO") != null) {
			// ȸ�� - ���ø���Ʈ db �̿�
			System.out.println(session.getAttribute("userNO"));
			// ������ ī�װ� �� ��������
			Category_detailVo vo = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("���� ī�װ� �� : " + vo.getCategory_name());
			
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo)); // ���� ī�װ� ���� ��ǰ & wishlist
			mav.setViewName("ProductView");
		}else {
			// ��ȸ�� - ���ø���Ʈ ��Ű �̿� 
			Category_detailVo vo = (Category_detailVo) session.getAttribute("Selected");
			System.out.println("���� ī�װ� �� : " + vo.getCategory_name());
			mav.addObject("Product", productserviceimpl.getProductListByCategory(vo));
			mav.setViewName("ProductView");
		}
		return mav;
	}
}
