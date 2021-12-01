package blueup.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.AdminOrderDAO;
import blueup.user.vo.OrderlistVo;

@Service("AdminOrderService")
public class AdminOrderServiceImpl implements AdminOrderService {
	@Autowired
	private AdminOrderDAO adminorderDAO;

	@Override
	public List<OrderlistVo> getOrderList(OrderlistVo orderlistvo) {
		return adminorderDAO.getOrderList(orderlistvo);
	}

	@Override
	public List<OrderlistVo> getOrderProduct(OrderlistVo orderlistvo) {
		return adminorderDAO.getOrderProduct(orderlistvo);
	}

	@Override
	public void getDeliveryPreparing(Integer order_detail_no) {
		adminorderDAO.getDeliveryPreparing(order_detail_no);
	}

	@Override
	public void getDeliveryShipping(Integer order_detail_no) {
		adminorderDAO.getDeliveryShipping(order_detail_no);
	}

	@Override
	public void getDeliveryComplete(Integer order_detail_no) {
		adminorderDAO.getDeliveryComplete(order_detail_no);
	}

	@Override
	public void getDeliveryDelay(Integer order_detail_no) {
		adminorderDAO.getDeliveryDelay(order_detail_no);
	}

	@Override
	public void getReturnShipping(Integer order_detail_no) {
		adminorderDAO.getReturnShipping(order_detail_no);
	}

	@Override
	public void getReturnComplete(Integer order_detail_no) {
		adminorderDAO.getReturnComplete(order_detail_no);
	}

	@Override
	public void getExchangeCollectionShipping(Integer order_detail_no) {
		adminorderDAO.getExchangeCollectionShipping(order_detail_no);
	}

	@Override
	public void getExchangeCollectionComplete(Integer order_detail_no) {
		adminorderDAO.getExchangeCollectionComplete(order_detail_no);
	}

}
