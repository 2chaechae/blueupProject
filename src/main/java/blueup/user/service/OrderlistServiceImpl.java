package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import blueup.user.dao.OrderlistDAO;
import blueup.user.vo.OrderlistVo;

@Service("OrderlistService")
public class OrderlistServiceImpl implements OrderlistService {
	@Autowired
	private OrderlistDAO orderlistDao;

	@Override
	public List<OrderlistVo> getOrderList(int user_no) { // 주문/배송 전체조회
		return orderlistDao.getOrderList(user_no);
	}

	@Override
	public List<OrderlistVo> getOrderDetail(OrderlistVo vo) { // 주문/배송 상세조회
		return orderlistDao.getOrderDetail(vo);
	}

	@Override
	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo) { // 전체상품 주문취소
		return orderlistDao.getOrderCancelAll(vo);
	}

	@Override
	public void getOrderCancel(OrderlistVo vo) { // 선택상품 주문취소
		orderlistDao.getOrderCancel(vo);
	}

	@Override
	public void getOrderConfirmed(OrderlistVo vo) { // 구매확정
		orderlistDao.getOrderConfirmed(vo);
	}

	@Override
	public void getWithdrawalReturn(OrderlistVo vo) { // 반품요청철회
		orderlistDao.getWithdrawalReturn(vo);
	}

	@Override
	public void getWithdrawalExchange(OrderlistVo vo) { // 교환요청철회
		orderlistDao.getWithdrawalExchange(vo);
	}

	@Override
	public void getExchangeRequest(OrderlistVo vo) { // 교환요청
		orderlistDao.getExchangeRequest(vo);
	}

	@Override
	public void getReturnRequest(OrderlistVo vo) { // 반품요청
		orderlistDao.getReturnRequest(vo);
	}

}