package blueup.admin.service;

import org.json.simple.JSONObject;

public interface AdminGoogleChartService {
	/* 주문액, 주문건수 통계 차트 자료*/
	public JSONObject getChartData(String start, String end);
	public JSONObject getOrderRateByProduct(String start, String end);
	public JSONObject getProductRanking();
}
