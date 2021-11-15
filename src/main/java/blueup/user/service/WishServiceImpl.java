package blueup.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.WishDAO;
import blueup.user.vo.WishListVo;

@Service("WishService")
public class WishServiceImpl implements WishService{
	@Autowired
	private WishDAO wishdao;

	@Override
	public int insertWishList(WishListVo vo) {
		return wishdao.insertWishList(vo);
	}

	@Override
	public int deleteWishList(WishListVo vo) {
		return wishdao.deleteWishList(vo);
	}

	@Override
	public int deleteWishListAll(WishListVo vo) {
		return wishdao.deleteWishAll(vo);
	}

	@Override
	public int deleteWishCart(WishListVo vo) {
		return wishdao.deleteWishCart(vo);
	}
}
