package blueup.user.service;

import java.util.List;

import blueup.user.vo.OrderlistVo;

public interface OrderlistService {

	public List<OrderlistVo> getOrderList(int user_no); // �ֹ�/��� ��ü��ȸ

	public List<OrderlistVo> getOrderDetail(OrderlistVo vo); // �ֹ�/��� ����ȸ

	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo); // ��ü��ǰ �ֹ����

	public void getOrderCancel(OrderlistVo vo); // ���û�ǰ �ֹ����

	public void getOrderConfirmed(OrderlistVo vo); // ����Ȯ��

	public void getExchangeRequest(OrderlistVo vo); // ��ȯ��û

	public void getReturnRequest(OrderlistVo vo); // ��ǰ��û

	public void getWithdrawalReturn(OrderlistVo vo); // ��ǰ��ûöȸ

	public void getWithdrawalExchange(OrderlistVo vo); // ��ȯ��ûöȸ

}
