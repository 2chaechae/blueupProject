package blueup.user.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import blueup.user.vo.CouponVo;
import blueup.user.vo.UsersVo;

public interface CouponService {
	public List<CouponVo> getCouponListService(UsersVo vo);
	public Integer getCouponCountService(UsersVo vo);
	public List<CouponVo> getUnavailableCouponListService(UsersVo vo);
	public List<CouponVo> getUnavailableCouponListBySearchService(Map<String, Object> map);
}
