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
	
	/*Ư�� ��ǰ ���� ��ȸ*/
	@Override
	public List<ReviewVo> selectProductReview(HashMap<String, Object> vo) {
		return productDetailDAO.selectProductReview(vo);
	}

	@Override
	public List<BannerVo> selectProductBanner() {
		return  productDetailDAO.selectProductBanner();
	}
	
	/*Ư�� ��ǰ �����*/
	@Override
	public int reviewCount(int product_no) {
		return productDetailDAO.reviewCount(product_no);
	}
	
	/*Ư�� ��ǰ ���� ���� �����*/
	@Override
	public List<ReviewVo> selectReviewByStar(HashMap<String, Object> vo) {
		return productDetailDAO.selectReviewByStar(vo);
	}
	
	/*Ư�� ��ǰ ���� ���� ���� ��ȸ*/
	@Override
	public int reviewCountByStar(HashMap<String, Object> vo) {
		return productDetailDAO.reviewCountByStar(vo);
	}

	@Override
	public List<ProductDetailVo> selectProductDetailNonMember(ProductDetailVo vo) {
		return productDetailDAO.selectProductDetailNonMember(vo);
	}

}
