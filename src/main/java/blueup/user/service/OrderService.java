package blueup.user.service;

import java.util.List;
import java.util.Map;

import blueup.user.vo.CouponVo;
import blueup.user.vo.UsersVo;

public interface OrderService {
	public Integer getToTalPointService(int user_no);

	public List<CouponVo> getCouponListService(UsersVo uservo);

	public CouponVo getCouponSelect(Map<String, Object> map);

}
