package blueup.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.OrderlistDAO;
import blueup.user.vo.OrderlistVo;

@Service("OrderlistService")
public class OrderlistServiceImpl implements OrderlistService{
	@Autowired
	private OrderlistDAO orderlistDao;

	@Override
	public List<OrderlistVo> getOrderList(OrderlistVo vo) { //주문/배송 전체조회
		return orderlistDao.getOrderList(vo);
	}

	@Override
	public List<OrderlistVo> getOrderDetail(OrderlistVo vo) { //주문/배송 상세조회
		return orderlistDao.getOrderDetail(vo);
	}

	@Override
	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo) { //전체상품 주문취소
		return orderlistDao.getOrderCancelAll(vo);
	}

	@Override
	public void getOrderCancel(OrderlistVo vo) { //선택상품 주문취소
		orderlistDao.getOrderCancel(vo);
	}

	@Override
	public List<OrderlistVo> getOrderListSearch(Map<String, String> map) { //검색된 날짜의 주문/배송 조회
		return orderlistDao.getOrderListSearch(map);
	}
	
}