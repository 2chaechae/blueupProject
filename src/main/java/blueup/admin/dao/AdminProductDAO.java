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
	
	public List<ProductVo> getProductList() {
		return sqlSssionTemplate.selectList("productDao.getProductList");
	}
	
	public List<ProductVo> getProductListBySearch(ProductVo vo) {
		return sqlSssionTemplate.selectList("productDao.getProductListBySearch", vo);
	}
	
	public ProductVo getProduct(int product_no) {
		return sqlSssionTemplate.selectOne("productDao.getProduct");
	}
}
