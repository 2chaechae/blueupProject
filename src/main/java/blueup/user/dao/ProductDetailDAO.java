package blueup.user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.BannerVo;
import blueup.user.vo.ProductDetailVo;
import blueup.user.vo.ReviewVo;



@Repository
public class ProductDetailDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	/*특정 상품 디테일 정보 조회*/
	public List<ProductDetailVo> selectProductDetail(ProductDetailVo vo) {
		return sqlSssionTemplate.selectList("productDetailDao.selectProductDetail", vo);
	}
	
	/*특정 상품 디테일 정보 조회-비회원*/
	public List<ProductDetailVo> selectProductDetailNonMember(ProductDetailVo vo) {
		return sqlSssionTemplate.selectList("productDetailDao.selectProductDetailNonMember", vo);
	}
	
	/*특정 상품 리뷰 조회*/
	public List<ReviewVo> selectProductReview(HashMap<String, Object> vo){
		return sqlSssionTemplate.selectList("productDetailDao.selectProductReview", vo);
	}
	
	/*특정 상품의 별점 기준 리뷰 조회*/
	public List<ReviewVo> selectReviewByStar(HashMap<String, Object> vo){
		return sqlSssionTemplate.selectList("productDetailDao.selectReviewByStar", vo);
	}
	
	public List<BannerVo> selectProductBanner(){
		return sqlSssionTemplate.selectList("productDetailDao.selectProductBanner");
	}
	
	/*특정 상품 리뷰 수*/
	public int reviewCount(int product_no) {
		return sqlSssionTemplate.selectOne("productDetailDao.reviewCount", product_no);
	}
	
	/*특정 상품의 별점 기준 리뷰 수*/
	public int reviewCountByStar(HashMap<String,Object> vo) {
		return sqlSssionTemplate.selectOne("productDetailDao.reviewCountByStar", vo);
	}
}
