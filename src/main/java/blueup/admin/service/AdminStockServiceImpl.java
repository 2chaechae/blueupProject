package blueup.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.AdminStockDAO;
import blueup.admin.vo.ProductVo;
import blueup.admin.vo.StockVo;

@Service("AdminStockService")
public class AdminStockServiceImpl implements AdminStockService{
	@Autowired
	private AdminStockDAO adminstockdao;

	@Override
	public List<StockVo> getStockList() {
		return adminstockdao.getStockList();
	}

	@Override
	public List<StockVo> getStockListBySearch(String search) {
		return adminstockdao.getStockListBySearch(search);
	}

	@Override
	public int insertStock(StockVo vo) {
		return adminstockdao.insertStock(vo);
	}

	@Override
	public int checkStock(StockVo vo) {
		return adminstockdao.checkStock(vo);
	}

}
