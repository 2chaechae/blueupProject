package blueup.user.service;

import blueup.user.vo.PaymentVo;
import blueup.user.vo.StockDeduction;

public interface PaymentService {
	public void insertOrderRequestService(PaymentVo vo);
	public void orderRequestDetailService(PaymentVo vo);
	public Integer getStockQuantityService(StockDeduction stock);
	public void deductStockService(StockDeduction stock);
	public void deductPointService(PaymentVo vo);
	public void deleteCouponService(int user_no);
}
