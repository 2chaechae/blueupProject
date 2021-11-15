package blueup.user.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.vo.CouponVo;
import blueup.user.vo.UsersVo;

@Repository
public class CouponDAO {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public List<CouponVo> getCouponList(UsersVo vo ,HttpSession session/*세션으로 받아주기  */){
		//session.getAttribute(null)
		List<CouponVo> list =  sessionTemplate.selectList("couponDao.selectCouponList", vo);
		for(CouponVo cp : list) {
			System.out.println(cp.getCoupon_name());
		}
		return list;
	}
	
	public int getCouponCount(HttpSession session ,UsersVo vo) {
		vo.setUser_no(1);
		int count = sessionTemplate.selectOne("couponDao.getCouponCount", vo);
		System.out.println(count+"개");
		return count;
	}
	
	public List<CouponVo> getUnavailableCouponListDao(UsersVo vo){
		List<CouponVo> couponList = sessionTemplate.selectList("couponDao.getUnavailableCouponList", vo);
		return couponList;
	}
	
	public List<CouponVo> getUnavailableCouponListBySearchDao(Map<String, Object> map){
		List<CouponVo> couponList = sessionTemplate.selectList("couponDao.selectCouponBySearch", map);
		return couponList;
	}
}
