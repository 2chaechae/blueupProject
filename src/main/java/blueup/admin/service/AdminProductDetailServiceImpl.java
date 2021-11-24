package blueup.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.AdminProductDetailDAO;
import blueup.admin.vo.ProductContentVo;

@Service("AdminProductDetailService")
public class AdminProductDetailServiceImpl implements AdminProductDetailService{
	@Autowired
	private AdminProductDetailDAO adminproductdetaildao;

	@Override
	public List<ProductContentVo> getProductDetail(int product_no) {
		return adminproductdetaildao.getProductDetail(product_no);
	}

}
