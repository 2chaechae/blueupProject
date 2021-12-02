package blueup.user.service;

import java.util.List;

import blueup.user.vo.OrderlistVo;

public interface OrderlistService {

	public List<OrderlistVo> getOrderList(int user_no); // 주문/배송 전체조회

	public List<OrderlistVo> getOrderDetail(OrderlistVo vo); // 주문/배송 상세조회

	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo); // 전체상품 주문취소

	public void getOrderCancel(OrderlistVo vo); // 선택상품 주문취소

	public void getOrderConfirmed(OrderlistVo vo); // 구매확정

	public void getExchangeRequest(OrderlistVo vo); // 교환요청

	public void getReturnRequest(OrderlistVo vo); // 반품요청

	public void getWithdrawalReturn(OrderlistVo vo); // 반품요청철회

	public void getWithdrawalExchange(OrderlistVo vo); // 교환요청철회

}
