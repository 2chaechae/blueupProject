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
	
	// ��ǰ & ī�װ� �ҷ�����
	@RequestMapping("/getProduct.do")
	public ModelAndView getProduct(HttpSession session) {
		System.out.println("getProduct ����");
		Category_detailVo cate = (Category_detailVo) session.getAttribute("Selected");
		System.out.println("������ �� :" +cate.getCategory_name() + "," + cate.getDetailed_category_name());
		//return ��
		ModelAndView mav = new ModelAndView();
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
		return mav;
	}
	
	// ���� ī�װ� ��ü
	@RequestMapping("/getProductAll.do")
	public ModelAndView getProductByDetail(HttpSession session) {
		Category_detailVo vo = (Category_detailVo) session.getAttribute("Selected");
		ModelAndView mav = new ModelAndView();
		System.out.println("���� ī�װ� �� : " + vo.getCategory_name());
		mav.addObject("Product", productserviceimpl.getProductListByCategory(vo));
		mav.setViewName("ProductView");
		return mav;
		
	}
}
