package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.vo.ProductVo;
import blueup.user.dao.ProductDAO;
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
	public List<ProductVo> getProductListByCategory(Category_detailVo vo) {
		return productdao.getProductListByCategory(vo); 
	}

	@Override
	public List<ProductVo> getProductListByDetailedCategory(Category_detailVo vo) {
		return productdao.getProductListByDetailedCategory(vo);
	}

	@Override
	public ProductVo getProduct(ProductVo vo) {
		return productdao.getProduct(vo);
	}

	@Override
	public List<ProductVo> getProductList(ProductVo vo) {
		return productdao.getProductList(vo);
	}

	@Override
	public List<ProductVo> getProductListBySearch(ProductVo vo) {
		return productdao.getProductListBySearch(vo);
	}
	


}
