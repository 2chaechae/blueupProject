package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.OrderDAO;
import blueup.user.vo.OrderVo;

@Service("OrderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDao;

	@Override
	public List<OrderVo> getProduct(OrderVo vo) { // 상품
		return orderDao.getProduct(vo);
	}



}
