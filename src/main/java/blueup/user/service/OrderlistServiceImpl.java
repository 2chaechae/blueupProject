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
	public List<OrderlistVo> getOrderList(int user_no) { // �ֹ�/��� ��ü��ȸ
		return orderlistDao.getOrderList(user_no);
	}

	@Override
	public List<OrderlistVo> getOrderDetail(OrderlistVo vo) { // �ֹ�/��� ����ȸ
		return orderlistDao.getOrderDetail(vo);
	}

	@Override
	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo) { // ��ü��ǰ �ֹ����
		return orderlistDao.getOrderCancelAll(vo);
	}

	@Override
	public void getOrderCancel(OrderlistVo vo) { // ���û�ǰ �ֹ����
		orderlistDao.getOrderCancel(vo);
	}

	@Override
	public void getOrderConfirmed(OrderlistVo vo) { // ����Ȯ��
		orderlistDao.getOrderConfirmed(vo);
	}

	@Override
	public void getWithdrawalReturn(OrderlistVo vo) { // ��ǰ��ûöȸ
		orderlistDao.getWithdrawalReturn(vo);
	}

	@Override
	public void getWithdrawalExchange(OrderlistVo vo) { // ��ȯ��ûöȸ
		orderlistDao.getWithdrawalExchange(vo);
	}

	@Override
	public void getExchangeRequest(OrderlistVo vo) { // ��ȯ��û
		orderlistDao.getExchangeRequest(vo);
	}

	@Override
	public void getReturnRequest(OrderlistVo vo) { // ��ǰ��û
		orderlistDao.getReturnRequest(vo);
	}

}