package blueup.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.PaymentVo;
import blueup.user.vo.StockDeduction;

@Repository
public class PaymentDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	public void insertOrderRequest(PaymentVo vo) {
		System.out.println("DAO에 있는 paymentvo 값 : "+vo.toString());
		sqlSessionTemplate.insert("paymentMapper.orderRequest", vo);
	}
	
	public void orderRequestDetailDao(PaymentVo vo) {
		sqlSessionTemplate.insert("paymentMapper.orderRequestDetail", vo);
	}
	
	public Integer getStockQuantityDao(StockDeduction stock) {
		return sqlSessionTemplate.selectOne("paymentMapper.getStockQuantity",stock);
	}
	
	public void deductStockDao(StockDeduction stock) {
		sqlSessionTemplate.update("paymentMapper.deductStock", stock);
	}
	
	public void deductPointDao(PaymentVo vo) {
		sqlSessionTemplate.insert("paymentMapper.deductPoint", vo);
	}
	
	public void deleteCouponDao(int coupon_no) {
		sqlSessionTemplate.delete("paymentMapper.deleteCoupon", coupon_no);
	}
}
