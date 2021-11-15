package blueup.user.service;

import blueup.user.vo.WishListVo;

public interface WishService {
	public int insertWishList(WishListVo vo);
	public int deleteWishList(WishListVo vo);
	public int deleteWishListAll(WishListVo vo);
	public int deleteWishCart(WishListVo vo);
}
