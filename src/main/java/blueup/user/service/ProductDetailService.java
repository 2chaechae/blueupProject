package blueup.user.service;

import java.util.HashMap;
import java.util.List;

import blueup.user.vo.BannerVo;
import blueup.user.vo.ProductDetailVo;
import blueup.user.vo.ReviewVo;

public interface ProductDetailService {
	public List<ProductDetailVo> selectProductDetail(ProductDetailVo vo);
	public List<ProductDetailVo> selectProductDetailNonMember(ProductDetailVo vo);
	public List<ReviewVo> selectProductReview(HashMap<String, Object> vo);
	public List<BannerVo> selectProductBanner();
	public int reviewCount(int product_no);
	public List<ReviewVo> selectReviewByStar(HashMap<String, Object> vo);
	public int reviewCountByStar(HashMap<String,Object> vo);
}
