package blueup.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.AdminProductDAO;
import blueup.admin.vo.ProductContentVo;
import blueup.admin.vo.ProductVo;

@Service("AdminProductService")
public class AdminProductServiceImpl implements AdminProductService{
	@Autowired
	private AdminProductDAO adminproductdao;

	@Override
	public List<ProductVo> getProductList() {
		return adminproductdao.getProductList();
	}

	@Override
	public List<ProductVo> getProductListBySearch(ProductVo vo) {
		return adminproductdao.getProductListBySearch(vo);
	}

	@Override
	public ProductVo getProduct(int product_no) {
		return adminproductdao.getProduct(product_no);
	}

	@Override
	public int productUpdate(ProductVo vo) {
		return adminproductdao.productUpdate(vo);
	}

	@Override
	public int addProduct(ProductVo vo) {
		return adminproductdao.addProduct(vo);
	}

	@Override
	public int getProductNo() {
		return adminproductdao.getProductNo();
	}

	@Override
	public List<ProductVo> getProductBySearch(String search) {
		return adminproductdao.getProductBySearch(search);
	}

}
