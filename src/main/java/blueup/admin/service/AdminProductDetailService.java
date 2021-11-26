package blueup.admin.service;

import java.util.HashMap;
import java.util.List;

import blueup.admin.vo.ProductContentVo;
import blueup.admin.vo.ProductVo;

public interface AdminProductDetailService {
	public List<ProductContentVo> getProductDetail(int product_no);
	public int updateProductDetail(ProductVo numberList);
	public int addProductDetail(List<ProductContentVo> vo);
}
