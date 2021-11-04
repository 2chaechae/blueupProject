package blueup.user.service;

import java.util.List;

import blueup.admin.vo.ProductVo;

public interface ProductService {
	public void insertProduct(ProductVo vo);
	public void updateProduct(ProductVo vo);
	public List<ProductVo> getProductListByCategory(ProductVo vo);
	public List<ProductVo> getProductListByDetailedCategory(ProductVo vo);
	public ProductVo getProduct(ProductVo vo);
	public List<ProductVo> getProductList(ProductVo vo);
	public List<ProductVo> getProductListBySearch(ProductVo vo);
}
