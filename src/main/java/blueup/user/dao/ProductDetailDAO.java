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

	public List<ProductDetailVo> selectProductDetail(ProductDetailVo vo) {
		return sqlSssionTemplate.selectList("productDetailDao.selectProductDetail", vo);
	}
	
	public List<ReviewVo> selectProductReview(HashMap<String, Object> vo){
		return sqlSssionTemplate.selectList("productDetailDao.selectProductReview", vo);
	}
	
	public List<BannerVo> selectProductBanner(){
		return sqlSssionTemplate.selectList("productDetailDao.selectProductBanner");
	}
	
	public int reviewCount(int product_no) {
		return sqlSssionTemplate.selectOne("productDetailDao.reviewCount", product_no);
	}
}
