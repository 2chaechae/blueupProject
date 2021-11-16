package blueup.user.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.vo.StockVo;
import blueup.user.dao.StockDAO;


@Service("StockService")
public class StockServiceImpl implements StockService{
	@Autowired
	private StockDAO stockDao;

	@Override
	public List<StockVo> getStockbyProductno(StockVo vo) {
		return stockDao.getStockbyProductno(vo);
	}
}
