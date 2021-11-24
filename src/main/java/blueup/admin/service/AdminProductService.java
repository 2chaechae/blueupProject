package blueup.admin.service;

import java.util.List;

import blueup.admin.vo.ProductVo;

public interface AdminProductService {
	public List<ProductVo> getProductList();
	public List<ProductVo> getProductListBySearch(ProductVo vo);
	public ProductVo getProduct(int product_no);
	
}
