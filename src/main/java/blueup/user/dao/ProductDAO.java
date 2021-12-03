package blueup.user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.ProductVo;
import blueup.user.vo.CategoryVo;
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

	public List<ProductVo> getProductListBywishList(String id){
		return sqlSssionTemplate.selectList("productDao.getProductListBywishList", id);
	}
	
	public int getCountProductDetail(HashMap<Object, Object> vo) {
		return sqlSssionTemplate.selectOne("productDao.getCountProductDetail",vo);
	}
	
	public int getCountProduct(HashMap<Object, Object> vo) {
		return sqlSssionTemplate.selectOne("productDao.getCountProduct", vo);
	}
	
	public List<ProductVo> getProductList() {
		return sqlSssionTemplate.selectList("productDao.getProductList");
	}
	
	public int updateViewCount(ProductVo vo) {
		return sqlSssionTemplate.update("productDao.updateViewCount", vo);
	}
	
	/* ���� ��ǰ ��Ʈ�� - ȸ�� */
	public List<ProductVo> getSaleProduct(HashMap<Object, Object> vo){
		return sqlSssionTemplate.selectList("productDao.getSaleProduct", vo);
	}
	
	/* ���� ��ǰ �Խù��� */
	public int getSaleProductCount() {
		return sqlSssionTemplate.selectOne("productDao.getSaleProductCount");
	}
	
	/* ���� ��ǰ ����Ʈ - ��ȸ�� */
	public List<ProductVo> getSaleProductNonMember(HashMap<Object, Object> vo){
		return sqlSssionTemplate.selectList("productDao.getSaleProductNonMember", vo);
	}
	
	/* ����ȭ�� ��ĸ ��ȸ */
	public List<ProductVo> getProductMain(){
		return  sqlSssionTemplate.selectList("productDao.getProductMain");
	}
	/////////////////////// ���� �Ⱦ��� /////////////////////////
	public ProductVo getProduct(ProductVo vo) {
		return sqlSssionTemplate.selectOne("productDao.getProduct", vo);
	}

	public List<ProductVo> getProductListBySearch(ProductVo vo) {
		return sqlSssionTemplate.selectList("productDao.getProductListBySearch", vo);
	}
}
