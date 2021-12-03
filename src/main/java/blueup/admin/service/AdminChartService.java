package blueup.admin.service;

import java.util.HashMap;
import java.util.List;

import blueup.admin.vo.AdminOrderAmountVo;
import blueup.admin.vo.AdminOrderRankVo;
import blueup.admin.vo.ProductVo;

public interface AdminChartService {
	public List<AdminOrderAmountVo> getOrderAmount(HashMap<String, String> vo);
	public List<AdminOrderRankVo> getOrderRateByProduct(HashMap<String, String> vo);
	public List<ProductVo> getProductRanking();
}
