package blueup.user.service;

import java.util.List;

import blueup.user.vo.OrderVo;

public interface OrderlistService {
	
	public List<OrderVo> getOrderList(OrderVo vo);
	
	public List<OrderVo> getOrderDetail(OrderVo vo);

}
