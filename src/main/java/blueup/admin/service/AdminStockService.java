package blueup.admin.service;

import java.util.List;

import blueup.admin.vo.ProductContentVo;
import blueup.admin.vo.ProductVo;
import blueup.admin.vo.StockVo;

public interface AdminStockService {
	public List<StockVo> getStockList();
	public List<StockVo> getStockListBySearch(String search);
	public int insertStock(StockVo vo);
	public int checkStock(StockVo vo);
	public StockVo getStockInfo(int stock_no);
	public int updateStock(StockVo vo);
}
