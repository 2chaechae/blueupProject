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
	
	/* 상품 정보 수정*/
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
	
	/*상품 등록*/
	public int addProduct(ProductVo vo) {
		return sqlSssionTemplate.insert("productDao.productAdd", vo);
	}
	/*상품 번호 조회 (max) */
	public int getProductNo() {
		return sqlSssionTemplate.selectOne("productDao.getProductNo");
	}
	/*상품 이름으로 검색*/
	public List<ProductVo> getProductBySearch(String search){
		return sqlSssionTemplate.selectList("productDao.getProductListBySearch", search);
	}
}
