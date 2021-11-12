package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.OrderlistDAO;
import blueup.user.vo.OrderVo;

@Service("OrderService")
public class OrderlistServiceImpl implements OrderlistService{
	@Autowired
	private OrderlistDAO orderlistdao;

	@Override
	public List<OrderVo> getOrderList(OrderVo vo) {
		return orderlistdao.getOrderList(vo);
	}

	@Override
	public List<OrderVo> getOrderDetail(OrderVo vo) {
		return orderlistdao.getOrderDetail(vo);
	}
	
}