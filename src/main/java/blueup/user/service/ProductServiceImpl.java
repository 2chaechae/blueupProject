package blueup.user.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.vo.ProductVo;
import blueup.user.dao.ProductDAO;
import blueup.user.vo.CategoryVo;
import blueup.user.vo.Category_detailVo;

@Service("ProductService")
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO productdao;
	
	/* 카테고리 기준 상품 리스트*/
	@Override
	public List<ProductVo> getProductListByCategory(HashMap<Object, Object> vo) {
		return productdao.getProductListByCategory(vo); 
	}

	/* 세부 카테고리 기준 상품 리스트*/
	@Override
	public List<ProductVo> getProductListByDetailedCategory(HashMap<Object, Object> vo) {
		return productdao.getProductListByDetailedCategory(vo);
	}
	
	/* 하나 상품 정보 조회*/
	@Override
	public ProductVo getProduct(ProductVo vo) {
		return productdao.getProduct(vo);
	}
	
	/* 상품 정보 리스트 조회*/
	@Override
	public List<ProductVo> getProductList() {
		return productdao.getProductList();
	}
	
	/* 위시리스트 상품 */
	@Override
	public List<ProductVo> getProductListBywishList(String id) {
		return productdao.getProductListBywishList(id);
	}

	/* 세부 카테고리별 게시물 수 */
	@Override
	public int getCountProductDetail(HashMap<Object, Object> vo) {
		return  productdao.getCountProductDetail(vo);
	}
	
	/* 카테고리별 게시물 수 */
	@Override
	public int getCountProduct(HashMap<Object, Object> vo) {
		return productdao.getCountProduct(vo);
	}

	/* 조회수 */
	@Override
	public int updateViewCount(ProductVo vo) {
		return productdao.updateViewCount(vo);
	}
	
	/* 세일 상품 리스트 */
	@Override
	public List<ProductVo> getSaleProduct(HashMap<Object, Object> vo) {
		return productdao.getSaleProduct(vo);
	}
	
	/* 세일 상품 수량 */
	@Override
	public int getSaleProductCount() {
		return productdao.getSaleProductCount();
	}
	
	@Override
	public void insertProduct(ProductVo vo) {
		productdao.insertProduct(vo);
	}
	
	
	@Override
	public void updateProduct(ProductVo vo) {
		productdao.updateProduct(vo);
	}


	@Override
	public List<ProductVo> getProductListBySearch(ProductVo vo) {
		return productdao.getProductListBySearch(vo);
	}

	@Override
	public List<ProductVo> getSaleProductNonMember(HashMap<Object, Object> vo) {
		return productdao.getSaleProductNonMember(vo);
	}

	@Override
	public List<ProductVo> getProductMain() {
		return productdao.getProductMain();
	}
}
