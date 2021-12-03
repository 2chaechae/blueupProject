package blueup.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.service.PaymentService;
import blueup.user.vo.OrderVo;
import blueup.user.vo.PaymentVo;
import blueup.user.vo.StockDeduction;

@Controller
public class PaymentController {
	@Autowired
	@Qualifier("paymentService")
	PaymentService service;
	
	@RequestMapping("/payment.do")
	@ResponseBody
	public String payment(PaymentVo payVo, HttpServletRequest request, int coupon_no) {
		System.out.println("user_no Ȯ�� : "+payVo.getUser_no());
		System.out.println("�Ѿ�� coupon_no : "+coupon_no);
		HttpSession session = request.getSession();
		//orderlist���� ������ �޾��� paymentVo ����Ʈ
		List<PaymentVo> paymentDetailList = new ArrayList<PaymentVo>();
		List<StockDeduction> deductionList = new ArrayList<StockDeduction>();
		List<Integer> stockQuantity = new ArrayList<Integer>();
		List<StockDeduction> deduct = new ArrayList<StockDeduction>();
		
		
		if(payVo.getOrder_means().equals("�������Ա�(�������)")) {
			payVo.setPurchaseconfirm("no");
		}else {
			payVo.setPurchaseconfirm("yes");
		}
		System.out.println(payVo.getUser_no());
		List<OrderVo> list = (List<OrderVo>) session.getAttribute("orderListSession");
		
		//�ֹ� ������ DB�� �ִ´�
		service.insertOrderRequestService(payVo);
		//���� �ֹ� ������ DB�� �ִ´�
		for(int i = 0; i<list.size();i++) {
			//�� �ֹ� ������ paymentVoList�� �־��ش�
			PaymentVo vv = new PaymentVo();
			//�� �ֹ� detail �ֹ� ��Ͽ� ��ȣ�� �ο�
			
			//��ǰ��ȣ ���
			vv.setProduct_no(list.get(i).getProduct_no());
			vv.setQuantity(list.get(i).getQuantity());
			vv.setProduct_price(list.get(i).getProduct_price());
			vv.setProduct_name(list.get(i).getProduct_name());
			if(payVo.getOrder_means().equals("�������Ա�(�������)")) {
				vv.setOrder_status("�Աݴ��");
			}else {
				vv.setOrder_status("����غ���");
			}
			vv.setProduct_size(list.get(i).getProduct_size());
			vv.setProduct_color(list.get(i).getProduct_color());
			vv.setPhone1(payVo.getPhone1());
			vv.setPhone2(payVo.getPhone2());
			vv.setPhone3(payVo.getPhone3());
			vv.setMain_image(list.get(i).getMain_image());
			vv.setRefund_bank("īī����ũ");
			vv.setRefund_account("1002-754-921158");
			vv.setRefund_means("������ü");
			vv.setReview_status(false);
			service.orderRequestDetailService(vv);
		}
		
		//��� ���� ����
		for(int i = 0; i<list.size();i++) {
			System.out.println(list.get(i).toString());
			StockDeduction stock = new StockDeduction();
			stock.setProduct_no(list.get(i).getProduct_no());
			System.out.println("��� �������� ��ǰ ��ȣ : "+list.get(i).getProduct_no());
			stock.setQuantity(list.get(i).getQuantity());
			System.out.println("��� �������� ��ǰ ���� ���� : "+list.get(i).getQuantity());
			stock.setProduct_size(list.get(i).getProduct_size());
			System.out.println("��� �������� ��ǰ������ : "+list.get(i).getProduct_size());
			stock.setProduct_color(list.get(i).getProduct_color());
			System.out.println("��� �������� ��ǰ ���� : "+list.get(i).getProduct_color());
			int sto = service.getStockQuantityService(stock);
			//�ֹ� ������ ������� ���� ��� ���� �߻�
			if(sto<stock.getQuantity()|| sto ==0) {
				 throw new IllegalArgumentException("������ �����մϴ�");
			}else {
				//��� ���� �Ϸ�
				service.deductStockService(stock);
			}
			
		}
		
		
		
		System.out.println("��� �ֱ� �Ϸ�!");
		
		
		  service.deductPointService(payVo);
		  System.out.println("����Ʈ ���� ����!");
		 
		if(coupon_no == 0) {
			System.out.println("���� ���� �ʿ� X");
		}else {
			service.deleteCouponService(coupon_no);
			System.out.println("������ȣ : "+coupon_no + "���� �Ϸ�");
		}
		
		
		return "�ϼ�";
	}
	
	
	@RequestMapping("/orderSuccess.do")
	public ModelAndView orderSuccess() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ordersuccess");
		return mav;
	}
}
