package blueup.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.StockVo;


@Repository
public class AdminStockDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	/* 재고 내역 가져오기 */
	public List<StockVo> getStockList(){
		return sqlSssionTemplate.selectList("stockDao.getStockList");
	}
	
	/* 검색어 기준 재고 내역 가져오기 */
	public List<StockVo> getStockListBySearch(String search){
		return sqlSssionTemplate.selectList("stockDao.getStockListBySearch", search);
	}
	
	/* 재고 추가하기 */
	public int insertStock(StockVo vo) {
		return sqlSssionTemplate.insert("stockDao.insertStock", vo);
	}
	
	/* 재고 중복 체크하기*/
	public int checkStock(StockVo vo) {
		return sqlSssionTemplate.selectOne("stockDao.checkStock", vo);
	}
	
	/* 특정 재고 정보 가져오기 */
	public StockVo getStockInfo(int stock_no) {
		return sqlSssionTemplate.selectOne("stockDao.getStockInfo", stock_no);
	}
	
	/* 재고 수량 변경 */
	public int updateStock(StockVo vo) {
		return sqlSssionTemplate.update("stockDao.updateStock", vo);
	}
}
