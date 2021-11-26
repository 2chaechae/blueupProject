package blueup.admin.service;

import java.util.List;

import blueup.admin.vo.ProductContentVo;
import blueup.admin.vo.ProductVo;

public interface AdminProductService {
	public List<ProductVo> getProductList();
	public List<ProductVo> getProductListBySearch(ProductVo vo);
	public ProductVo getProduct(int product_no);
	public int productUpdate(ProductVo vo);
	public int addProduct(ProductVo vo);
	public int getProductNo();
	public List<ProductVo> getProductBySearch(String search);
}
