package blueup.admin.service;

import java.util.List;

import blueup.admin.vo.ProductContentVo;

public interface AdminProductDetailService {
	public List<ProductContentVo> getProductDetail(int product_no);
	public int updateProductDetail(List<ProductContentVo> vo);

}
