package blueup.user.service;

import java.util.List;

import blueup.user.vo.BannerVo;
import blueup.user.vo.ProductDetailVo;
import blueup.user.vo.ReviewVo;

public interface ProductDetailService {
	public List<ProductDetailVo> selectProductDetail(ProductDetailVo vo);
	public List<ReviewVo> selectProductReview(ReviewVo vo);
	public List<BannerVo> selectProductBanner();
}
