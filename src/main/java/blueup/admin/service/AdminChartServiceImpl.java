package blueup.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.AdminChartDAO;
import blueup.admin.vo.AdminOrderAmountVo;
import blueup.admin.vo.AdminOrderRankVo;
import blueup.admin.vo.ProductVo;

@Service("AdminChartService")
public class AdminChartServiceImpl implements AdminChartService{
	@Autowired
	private AdminChartDAO adminchartdao;

	@Override
	public List<AdminOrderAmountVo> getOrderAmount(HashMap<String, String> vo) {
		return adminchartdao.getOrderAmount(vo);
	}

	@Override
	public List<AdminOrderRankVo> getOrderRateByProduct(HashMap<String, String> vo) {
		return adminchartdao.getOrderRateByProduct(vo);
	}

	@Override
	public List<ProductVo> getProductRanking() {
		return adminchartdao.getProductRanking();
	}

}
