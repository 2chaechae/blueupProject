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
	
	/* 주문액, 주문건수*/
	public List<AdminOrderAmountVo> getOrderAmount(HashMap<String, String> vo) {
		return sqlSssionTemplate.selectList("orderDao.getOrderAmount", vo);
	}
	
	/* 주문액 상품별 비율*/
	public List<AdminOrderRankVo> getOrderRateByProduct(HashMap<String, String> vo){
		return sqlSssionTemplate.selectList("orderlistDao.getOrderRateByProduct", vo);
	}
	
	/* 상품 랭킹 */
	public List<ProductVo> getProductRanking(){
		return sqlSssionTemplate.selectList("productDao.getProductRanking");
	}
	
}
