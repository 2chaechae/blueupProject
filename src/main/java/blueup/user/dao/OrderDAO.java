package blueup.user.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.CouponVo;
import blueup.user.vo.UsersVo;

@Repository
public class OrderDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public Integer getTotalPointDao(int user_no) {
		Integer total_point = sqlSessionTemplate.selectOne("orderDao.getTotalPoint", user_no);
		return total_point;
	}

	public List<CouponVo> getCouponList(UsersVo uservo) {// ÄíÆùÁ¶È¸
		List<CouponVo> list = sqlSessionTemplate.selectList("orderDao.selectCouponList", uservo);
		return list;
	}

	public CouponVo getCouponSelect(Map<String, Object> map) { // ÄíÆù¼±ÅÃ
		CouponVo coupon = sqlSessionTemplate.selectOne("orderDao.getCouponSelect", map);
		return coupon;
	}
}
