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
	
	/*Ư�� ��ǰ ������ ���� ��ȸ*/
	public List<ProductDetailVo> selectProductDetail(ProductDetailVo vo) {
		return sqlSssionTemplate.selectList("productDetailDao.selectProductDetail", vo);
	}
	
	/*Ư�� ��ǰ ������ ���� ��ȸ-��ȸ��*/
	public List<ProductDetailVo> selectProductDetailNonMember(ProductDetailVo vo) {
		return sqlSssionTemplate.selectList("productDetailDao.selectProductDetailNonMember", vo);
	}
	
	/*Ư�� ��ǰ ���� ��ȸ*/
	public List<ReviewVo> selectProductReview(HashMap<String, Object> vo){
		return sqlSssionTemplate.selectList("productDetailDao.selectProductReview", vo);
	}
	
	/*Ư�� ��ǰ�� ���� ���� ���� ��ȸ*/
	public List<ReviewVo> selectReviewByStar(HashMap<String, Object> vo){
		return sqlSssionTemplate.selectList("productDetailDao.selectReviewByStar", vo);
	}
	
	public List<BannerVo> selectProductBanner(){
		return sqlSssionTemplate.selectList("productDetailDao.selectProductBanner");
	}
	
	/*Ư�� ��ǰ ���� ��*/
	public int reviewCount(int product_no) {
		return sqlSssionTemplate.selectOne("productDetailDao.reviewCount", product_no);
	}
	
	/*Ư�� ��ǰ�� ���� ���� ���� ��*/
	public int reviewCountByStar(HashMap<String,Object> vo) {
		return sqlSssionTemplate.selectOne("productDetailDao.reviewCountByStar", vo);
	}
}
