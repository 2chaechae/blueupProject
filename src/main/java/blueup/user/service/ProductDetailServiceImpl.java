package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.ProductDetailDAO;
import blueup.user.vo.BannerVo;
import blueup.user.vo.ProductDetailVo;
import blueup.user.vo.ReviewVo;

@Service("ProductDetailService")
public class ProductDetailServiceImpl implements ProductDetailService {
	@Autowired
	private ProductDetailDAO productDetailDAO;

	@Override
	public List<ProductDetailVo> selectProductDetail(ProductDetailVo vo) {
		return productDetailDAO.selectProductDetail(vo);
	}

	@Override
	public List<ReviewVo> selectProductReview(ReviewVo vo) {
		return productDetailDAO.selectProductReview(vo);
	}

	@Override
	public List<BannerVo> selectProductBanner() {
		return  productDetailDAO.selectProductBanner();
	}

}
