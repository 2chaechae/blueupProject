package blueup.user.dao;

import java.util.HashMap;
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
	
	public List<ProductVo> getProductListByCategory(HashMap<Object, Object> vo) {
		return sqlSssionTemplate.selectList("productDao.getProductListByCategory", vo);
	}
	
	public List<ProductVo> getProductListByDetailedCategory(HashMap<Object, Object> vo) {
		return sqlSssionTemplate.selectList("productDao.getProductListByDetailedCategory", vo);
	}

	public List<ProductVo> getProductListBywishList(String userid){
		return sqlSssionTemplate.selectList("productDao.getProductListBywishList", userid);
	}
	
	public int getCountProduct() {
		return sqlSssionTemplate.selectOne("productDao.getCountProduct");
	}
	
	
	/////////////////////// 아직 안쓴거 /////////////////////////
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
