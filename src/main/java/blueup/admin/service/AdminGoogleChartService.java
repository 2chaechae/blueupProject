package blueup.admin.service;

import org.json.simple.JSONObject;

public interface AdminGoogleChartService {
	/* �ֹ���, �ֹ��Ǽ� ��� ��Ʈ �ڷ�*/
	public JSONObject getChartData(String start, String end);
	public JSONObject getOrderRateByProduct(String start, String end);
	public JSONObject getProductRanking();
}
