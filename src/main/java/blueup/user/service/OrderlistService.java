package blueup.user.service;

import java.util.List;
import java.util.Map;

import blueup.user.vo.OrderlistVo;

public interface OrderlistService {

	public List<OrderlistVo> getOrderList(OrderlistVo vo); // 주문/배송 전체조회

	public List<OrderlistVo> getOrderDetail(OrderlistVo vo); // 주문/배송 상세조회

	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo); // 전체상품 주문취소

	public void getOrderCancel(OrderlistVo vo); // 선택상품 주문취소

	public List<OrderlistVo> getOrderListSearch(Map<String, String> map); // 검색된 날짜의 주문/배송 조회

}
