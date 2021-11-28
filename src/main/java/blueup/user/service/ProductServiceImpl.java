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

	@Override
	public void insertProduct(ProductVo vo) {
		productdao.insertProduct(vo);
	}

	@Override
	public void updateProduct(ProductVo vo) {
		productdao.updateProduct(vo);
	}
	
	@Override
	public List<ProductVo> getProductListByCategory(HashMap<Object, Object> vo) {
		return productdao.getProductListByCategory(vo); 
	}

	@Override
	public List<ProductVo> getProductListByDetailedCategory(HashMap<Object, Object> vo) {
		return productdao.getProductListByDetailedCategory(vo);
	}

	@Override
	public ProductVo getProduct(ProductVo vo) {
		return productdao.getProduct(vo);
	}

	@Override
	public List<ProductVo> getProductList() {
		return productdao.getProductList();
	}

	@Override
	public List<ProductVo> getProductListBySearch(ProductVo vo) {
		return productdao.getProductListBySearch(vo);
	}

	@Override
	public List<ProductVo> getProductListBywishList(String id) {
		return productdao.getProductListBywishList(id);
	}

	@Override
	public int getCountProductDetail(HashMap<Object, Object> vo) {
		return  productdao.getCountProductDetail(vo);
	}

	@Override
	public int getCountProduct(HashMap<Object, Object> vo) {
		return productdao.getCountProduct(vo);
	}

	@Override
	public int updateViewCount(ProductVo vo) {
		return productdao.updateViewCount(vo);
	}

	@Override
	public List<ProductVo> getSaleProduct(String user_no) {
		return productdao.getSaleProduct(user_no);
	}
	


}
