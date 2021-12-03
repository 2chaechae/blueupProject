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
	
	/* ��� ���� �������� */
	public List<StockVo> getStockList(){
		return sqlSssionTemplate.selectList("stockDao.getStockList");
	}
	
	/* �˻��� ���� ��� ���� �������� */
	public List<StockVo> getStockListBySearch(String search){
		return sqlSssionTemplate.selectList("stockDao.getStockListBySearch", search);
	}
	
	/* ��� �߰��ϱ� */
	public int insertStock(StockVo vo) {
		return sqlSssionTemplate.insert("stockDao.insertStock", vo);
	}
	
	/* ��� �ߺ� üũ�ϱ�*/
	public int checkStock(StockVo vo) {
		return sqlSssionTemplate.selectOne("stockDao.checkStock", vo);
	}
	
	/* Ư�� ��� ���� �������� */
	public StockVo getStockInfo(int stock_no) {
		return sqlSssionTemplate.selectOne("stockDao.getStockInfo", stock_no);
	}
	
	/* ��� ���� ���� */
	public int updateStock(StockVo vo) {
		return sqlSssionTemplate.update("stockDao.updateStock", vo);
	}
}
