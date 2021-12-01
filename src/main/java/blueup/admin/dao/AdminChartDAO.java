package blueup.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.AdminOrderAmountVo;
import blueup.admin.vo.AdminOrderRankVo;
import blueup.admin.vo.ProductVo;


@Repository
public class AdminChartDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	/* �ֹ���, �ֹ��Ǽ�*/
	public List<AdminOrderAmountVo> getOrderAmount(HashMap<String, String> vo) {
		return sqlSssionTemplate.selectList("orderDao.getOrderAmount", vo);
	}
	
	/* �ֹ��� ��ǰ�� ����*/
	public List<AdminOrderRankVo> getOrderRateByProduct(HashMap<String, String> vo){
		return sqlSssionTemplate.selectList("orderlistDao.getOrderRateByProduct", vo);
	}
	
	/* ��ǰ ��ŷ */
	public List<ProductVo> getProductRanking(){
		return sqlSssionTemplate.selectList("productDao.getProductRanking");
	}
	
}
