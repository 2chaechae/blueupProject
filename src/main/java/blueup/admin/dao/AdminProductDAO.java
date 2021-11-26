package blueup.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.ProductVo;


@Repository
public class AdminProductDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	/* ��ǰ ���� ����*/
	public int productUpdate(ProductVo vo) {
		return sqlSssionTemplate.update("productDao.productUpdate", vo);
	}
	
	public List<ProductVo> getProductList() {
		return sqlSssionTemplate.selectList("productDao.getProductList");
	}
	
	public List<ProductVo> getProductListBySearch(ProductVo vo) {
		return sqlSssionTemplate.selectList("productDao.getProductListBySearch", vo);
	}
	
	public ProductVo getProduct(int product_no) {
		return sqlSssionTemplate.selectOne("productDao.getProduct", product_no);
	}
	
	/*��ǰ ���*/
	public int addProduct(ProductVo vo) {
		return sqlSssionTemplate.insert("productDao.productAdd", vo);
	}
	/*��ǰ ��ȣ ��ȸ (max) */
	public int getProductNo() {
		return sqlSssionTemplate.selectOne("productDao.getProductNo");
	}
	/*��ǰ �̸����� �˻�*/
	public List<ProductVo> getProductBySearch(String search){
		return sqlSssionTemplate.selectList("productDao.getProductListBySearch", search);
	}
}
