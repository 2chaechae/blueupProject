package blueup.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.service.AdminProductServiceImpl;
import blueup.admin.service.AdminStockServiceImpl;
import blueup.admin.vo.ProductVo;
import blueup.admin.vo.StockVo;

@Controller
public class AdminStockController {
	@Autowired 
	private AdminStockServiceImpl adminstockserviceimpl;
	@Autowired
	private AdminProductServiceImpl adminproductserviceimpl;
	
	/* ��� ��ȸ */
	@RequestMapping("/getStockList.mdo")
	public ModelAndView getStockList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("stockList", adminstockserviceimpl.getStockList());
		mav.setViewName("adminStockList");
		return mav;
	}
	
	/* ��� ��� �� */
	@RequestMapping("/getStockWrite.mdo")
	public ModelAndView getStockWrite() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminStockWrite");
		return mav;
	}
	
	/* ��� ��ǰ������ ��ȸ */
	@RequestMapping("/getStockListBySearch.mdo")
	@ResponseBody
	public ModelAndView getStockListBySearch(String search) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("stockList",  adminstockserviceimpl.getStockListBySearch(search));
		mav.setViewName("adminStockSearchHtml");
		return mav;
	}
	
	/* Ư�� ��ǰ ��ȸ */
	@RequestMapping("/getProductInfoForStock.mdo")
	@ResponseBody
	public ProductVo getProduct(int product_no){
		ProductVo product = adminproductserviceimpl.getProduct(product_no);
		return product;
	}
	
	/* ��� ��� */
	@RequestMapping("/insertStock.mdo")
	@ResponseBody
	public ModelAndView insertStock(StockVo vo){
		ModelAndView mav = new ModelAndView();
		int result = adminstockserviceimpl.insertStock(vo);
		if(result == 1) {
			System.out.println("��ϼ���");
			mav.addObject("stockList", adminstockserviceimpl.getStockList());
			mav.setViewName("adminStockList");
		}
		return mav;
	}
	
	/* ��� �ߺ� üũ*/
	@RequestMapping("/checkStock.mdo")
	@ResponseBody
	public int checkStock(StockVo vo) {
		System.out.println("test");
		System.out.println(vo.getProduct_no());
		System.out.println(vo.getProduct_size());
		System.out.println(vo.getUnit_price());
		System.out.println(vo.getProduct_color());
		int result = adminstockserviceimpl.checkStock(vo);
		System.out.println(result);
		return result;
	}
	
	/* Ư�� ��� �������� */
	@RequestMapping("/getStockInfo.mdo")
	public ModelAndView getStockInfo(int stock_no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("StockInfo", adminstockserviceimpl.getStockInfo(stock_no));
		mav.setViewName("adminStockView");
		return mav;
	}
	
	/* ��� ����*/
	@RequestMapping("/updateStock.mdo")
	public ModelAndView updateStock(StockVo vo) {
		ModelAndView mav = new ModelAndView();
		adminstockserviceimpl.updateStock(vo);
		int stock_no = vo.getStock_no();
		mav.addObject("StockInfo", adminstockserviceimpl.getStockInfo(stock_no));
		mav.setViewName("adminStockList");
		return mav;
	}
	
}
