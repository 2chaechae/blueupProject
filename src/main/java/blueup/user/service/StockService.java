package blueup.user.service;

import java.util.List;

import blueup.admin.vo.StockVo;

public interface StockService {
	public List<StockVo> getStockbyProductno(StockVo vo);
}
