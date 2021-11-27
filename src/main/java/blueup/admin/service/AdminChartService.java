package blueup.admin.service;

import java.util.HashMap;
import java.util.List;

import blueup.admin.vo.AdminOrderAmountVo;

public interface AdminChartService {
	public List<AdminOrderAmountVo> getOrderAmount(HashMap<String, String> vo);
}
