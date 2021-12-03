package blueup.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.OrderDAO;
import blueup.user.vo.CouponVo;
import blueup.user.vo.UsersVo;

@Service("OrderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDao;

	@Override
	public Integer getToTalPointService(int user_no) {
		Integer total_point = orderDao.getTotalPointDao(user_no);
		return total_point;
	}

	@Override
	public List<CouponVo> getCouponListService(UsersVo uservo) {
		List<CouponVo> list = orderDao.getCouponList(uservo);
		return list;
	}

	@Override
	public CouponVo getCouponSelect(Map<String, Object> map) {
		CouponVo coupon = orderDao.getCouponSelect(map);
		return coupon;
	}
}
