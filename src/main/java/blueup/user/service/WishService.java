package blueup.user.service;

import blueup.user.vo.WishListVo;

public interface WishService {
	public int insertWishList(WishListVo vo);
	public int deleteWishList(WishListVo vo);
}
