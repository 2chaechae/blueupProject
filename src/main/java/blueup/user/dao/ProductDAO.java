package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.ProductVo;
import blueup.user.vo.Category_detailVo;


@Repository
public class ProductDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public int insertProduct(ProductVo vo) {
		return sqlSssionTemplate.insert("productDao.productRegistration", vo);
	}
	
	public int updateProduct(ProductVo vo) {
		return sqlSssionTemplate.update("productDao.productUpdate", vo);
	}
	
	public List<ProductVo> getProductListByCategory(ProductVo vo) {
		return sqlSssionTemplate.selectList("productDao.getProductListByCategory", vo);
	}
	
	public List<ProductVo> getProductListByDetailedCategory(Category_detailVo vo) {
		return sqlSssionTemplate.selectList("productDao.getProductListByDetailedCategory", vo);
	}

	public ProductVo getProduct(ProductVo vo) {
		return sqlSssionTemplate.selectOne("productDao.getProduct", vo);
	}
	
	public List<ProductVo> getProductList(ProductVo vo) {
		return sqlSssionTemplate.selectList("productDao.getProductList", vo);
	}

	public List<ProductVo> getProductListBySearch(ProductVo vo) {
		return sqlSssionTemplate.selectList("productDao.getProductListBySearch", vo);
	}
}
