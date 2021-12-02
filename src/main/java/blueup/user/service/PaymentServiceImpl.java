package blueup.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.PaymentDAO;
import blueup.user.vo.PaymentVo;
import blueup.user.vo.StockDeduction;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
	@Autowired
	PaymentDAO dao;
	
	@Override
	public void insertOrderRequestService(PaymentVo vo) {
		System.out.println("ServiceImpl¿¡ ÀÖ´Â paymentVo : "+vo.toString());
		dao.insertOrderRequest(vo);
	}

	@Override
	public void orderRequestDetailService(PaymentVo vo) {
		dao.orderRequestDetailDao(vo);
	}

	@Override
	public Integer getStockQuantityService(StockDeduction stock) {
		return dao.getStockQuantityDao(stock);
	}

	@Override
	public void deductStockService(StockDeduction stock) {
		dao.deductStockDao(stock);
	}

	@Override
	public void deductPointService(PaymentVo vo) {
		dao.deductPointDao(vo);
	}

	@Override
	public void deleteCouponService(int user_no) {
		dao.deleteCouponDao(user_no);
	}
	
	

}
