package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import blueup.admin.vo.StockVo;

@Repository
public class StockDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<StockVo> getStockbyProductno(StockVo vo) {
		return sqlSessionTemplate.selectList("stockDao.getStockbyProductno", vo);
	}

}
