package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.NoticeVo;
import blueup.user.vo.WishListVo;

@Repository
public class WishDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public int insertWishList(WishListVo vo) {
		return sqlSssionTemplate.insert("wishDao.insertWish", vo);
	}
	
	public int deleteWishList(WishListVo vo) {
		return sqlSssionTemplate.delete("wishDao.deleteWish", vo);
	}
}
