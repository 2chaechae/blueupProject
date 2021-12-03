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
		System.out.println("user_no 확인 : "+payVo.getUser_no());
		System.out.println("넘어온 coupon_no : "+coupon_no);
		HttpSession session = request.getSession();
		//orderlist에서 값들을 받아줄 paymentVo 리스트
		List<PaymentVo> paymentDetailList = new ArrayList<PaymentVo>();
		List<StockDeduction> deductionList = new ArrayList<StockDeduction>();
		List<Integer> stockQuantity = new ArrayList<Integer>();
		List<StockDeduction> deduct = new ArrayList<StockDeduction>();
		
		
		if(payVo.getOrder_means().equals("무통장입금(가상계좌)")) {
			payVo.setPurchaseconfirm("no");
		}else {
			payVo.setPurchaseconfirm("yes");
		}
		System.out.println(payVo.getUser_no());
		List<OrderVo> list = (List<OrderVo>) session.getAttribute("orderListSession");
		
		//주문 내역을 DB에 넣는다
		service.insertOrderRequestService(payVo);
		//상세한 주문 내역을 DB에 넣는다
		for(int i = 0; i<list.size();i++) {
			//상세 주문 내역을 paymentVoList에 넣어준다
			PaymentVo vv = new PaymentVo();
			//각 주문 detail 주문 목록에 번호를 부여
			
			//제품번호 등록
			vv.setProduct_no(list.get(i).getProduct_no());
			vv.setQuantity(list.get(i).getQuantity());
			vv.setProduct_price(list.get(i).getProduct_price());
			vv.setProduct_name(list.get(i).getProduct_name());
			if(payVo.getOrder_means().equals("무통장입금(가상계좌)")) {
				vv.setOrder_status("입금대기");
			}else {
				vv.setOrder_status("배송준비중");
			}
			vv.setProduct_size(list.get(i).getProduct_size());
			vv.setProduct_color(list.get(i).getProduct_color());
			vv.setPhone1(payVo.getPhone1());
			vv.setPhone2(payVo.getPhone2());
			vv.setPhone3(payVo.getPhone3());
			vv.setMain_image(list.get(i).getMain_image());
			vv.setRefund_bank("카카오뱅크");
			vv.setRefund_account("1002-754-921158");
			vv.setRefund_means("계좌이체");
			vv.setReview_status(false);
			service.orderRequestDetailService(vv);
		}
		
		//재고 차감 시작
		for(int i = 0; i<list.size();i++) {
			System.out.println(list.get(i).toString());
			StockDeduction stock = new StockDeduction();
			stock.setProduct_no(list.get(i).getProduct_no());
			System.out.println("재고 차감에서 제품 번호 : "+list.get(i).getProduct_no());
			stock.setQuantity(list.get(i).getQuantity());
			System.out.println("재고 차감에서 제품 선택 수량 : "+list.get(i).getQuantity());
			stock.setProduct_size(list.get(i).getProduct_size());
			System.out.println("재고 차감에서 제품사이즈 : "+list.get(i).getProduct_size());
			stock.setProduct_color(list.get(i).getProduct_color());
			System.out.println("재고 차감에서 제품 색상 : "+list.get(i).getProduct_color());
			int sto = service.getStockQuantityService(stock);
			//주문 수량이 재고량보다 많을 경우 예외 발생
			if(sto<stock.getQuantity()|| sto ==0) {
				 throw new IllegalArgumentException("수량이 부족합니다");
			}else {
				//재고 차감 완료
				service.deductStockService(stock);
			}
			
		}
		
		
		
		System.out.println("디비 넣기 완료!");
		
		
		  service.deductPointService(payVo);
		  System.out.println("포인트 차감 성공!");
		 
		if(coupon_no == 0) {
			System.out.println("쿠폰 차감 필요 X");
		}else {
			service.deleteCouponService(coupon_no);
			System.out.println("쿠폰번호 : "+coupon_no + "차감 완료");
		}
		
		
		return "완성";
	}
	
	
	@RequestMapping("/orderSuccess.do")
	public ModelAndView orderSuccess() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ordersuccess");
		return mav;
	}
}
