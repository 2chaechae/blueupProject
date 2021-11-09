package blueup.user.service;

import java.util.HashMap;
import java.util.List;

import blueup.admin.vo.ProductVo;
import blueup.user.vo.Category_detailVo;

public interface ProductService {
	public void insertProduct(ProductVo vo);
	public void updateProduct(ProductVo vo);
	public List<ProductVo> getProductListByCategory(HashMap<Object, Object> vo);
	public List<ProductVo> getProductListByDetailedCategory(HashMap<Object, Object> vo);
	public ProductVo getProduct(ProductVo vo);
	public List<ProductVo> getProductList(ProductVo vo);
	public List<ProductVo> getProductListBySearch(ProductVo vo);
	public List<ProductVo> getProductListBywishList(String userid);
}
