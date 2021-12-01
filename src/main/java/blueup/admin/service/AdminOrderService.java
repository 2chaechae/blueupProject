package blueup.admin.service;

import java.util.List;

import blueup.user.vo.OrderlistVo;

public interface AdminOrderService {
	public List<OrderlistVo> getOrderList(OrderlistVo orderlistvo); // 주문/배송 전체조회

	public List<OrderlistVo> getOrderProduct(OrderlistVo orderlistvo);

	public void getDeliveryPreparing(Integer order_detail_no); // 배송준비중

	public void getDeliveryShipping(Integer order_detail_no); // 배송중

	public void getDeliveryComplete(Integer order_detail_no); // 배송완료

	public void getDeliveryDelay(Integer order_detail_no); // 배송지연

	public void getReturnShipping(Integer order_detail_no); // 반품수거중

	public void getReturnComplete(Integer order_detail_no); // 반품수거완료

	public void getExchangeCollectionShipping(Integer order_detail_no); // 교환수거중

	public void getExchangeCollectionComplete(Integer order_detail_no); // 교환수거완료

}
