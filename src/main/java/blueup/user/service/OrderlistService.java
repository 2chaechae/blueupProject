package blueup.user.service;

import java.util.List;
import java.util.Map;

import blueup.user.vo.OrderlistVo;

public interface OrderlistService {

	public List<OrderlistVo> getOrderList(OrderlistVo vo); // �ֹ�/��� ��ü��ȸ

	public List<OrderlistVo> getOrderDetail(OrderlistVo vo); // �ֹ�/��� ����ȸ

	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo); // ��ü��ǰ �ֹ����

	public void getOrderCancel(OrderlistVo vo); // ���û�ǰ �ֹ����

	public List<OrderlistVo> getOrderListSearch(Map<String, String> map); // �˻��� ��¥�� �ֹ�/��� ��ȸ

}
