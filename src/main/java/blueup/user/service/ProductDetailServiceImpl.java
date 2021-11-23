package blueup.user.service;

import java.util.HashMap;
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
	
	/*특정 상품 리뷰 조회*/
	@Override
	public List<ReviewVo> selectProductReview(HashMap<String, Object> vo) {
		return productDetailDAO.selectProductReview(vo);
	}

	@Override
	public List<BannerVo> selectProductBanner() {
		return  productDetailDAO.selectProductBanner();
	}
	
	/*특정 상품 리뷰수*/
	@Override
	public int reviewCount(int product_no) {
		return productDetailDAO.reviewCount(product_no);
	}
	
	/*특정 상품 별점 기준 리뷰수*/
	@Override
	public List<ReviewVo> selectReviewByStar(HashMap<String, Object> vo) {
		return productDetailDAO.selectReviewByStar(vo);
	}
	
	/*특정 상품 별점 기준 리뷰 조회*/
	@Override
	public int reviewCountByStar(HashMap<String, Object> vo) {
		return productDetailDAO.reviewCountByStar(vo);
	}

	@Override
	public List<ProductDetailVo> selectProductDetailNonMember(ProductDetailVo vo) {
		return productDetailDAO.selectProductDetailNonMember(vo);
	}

}
