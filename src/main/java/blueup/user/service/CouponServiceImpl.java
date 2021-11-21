package blueup.user.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.CouponDAO;
import blueup.user.vo.CouponVo;
import blueup.user.vo.UsersVo;


@Service("couponService")
public class CouponServiceImpl implements CouponService{

	@Autowired
	CouponDAO couponDAO;
	
	@Override
	public List<CouponVo> getCouponListService(UsersVo vo) {
		List<CouponVo> list =  couponDAO.getCouponList(vo);
		return list;
	}

	@Override
	public Integer getCouponCountService(UsersVo vo) {
		Integer count = couponDAO.getCouponCount(vo);
		return count;
	}

	@Override
	public List<CouponVo> getUnavailableCouponListService(UsersVo vo) {
		List<CouponVo> couponVo = couponDAO.getUnavailableCouponListDao(vo);
		return couponVo;
	}

	@Override
	public List<CouponVo> getUnavailableCouponListBySearchService(Map<String, Object> map) {
		List<CouponVo> couponVo = couponDAO.getUnavailableCouponListBySearchDao(map);
		return couponVo;
	}
	
	
	
	
	
	
	
	

	
	
}
