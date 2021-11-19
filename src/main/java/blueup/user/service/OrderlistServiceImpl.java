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
	public List<OrderlistVo> getOrderList(OrderlistVo vo) { //�ֹ�/��� ��ü��ȸ
		return orderlistDao.getOrderList(vo);
	}

	@Override
	public List<OrderlistVo> getOrderDetail(OrderlistVo vo) { //�ֹ�/��� ����ȸ
		return orderlistDao.getOrderDetail(vo);
	}

	@Override
	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo) { //��ü��ǰ �ֹ����
		return orderlistDao.getOrderCancelAll(vo);
	}

	@Override
	public void getOrderCancel(OrderlistVo vo) { //���û�ǰ �ֹ����
		orderlistDao.getOrderCancel(vo);
	}

	@Override
	public List<OrderlistVo> getOrderListSearch(Map<String, String> map) { //�˻��� ��¥�� �ֹ�/��� ��ȸ
		return orderlistDao.getOrderListSearch(map);
	}
	
}