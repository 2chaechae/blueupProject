package blueup.user.service;

import java.util.List;


import blueup.user.vo.CartVo;

public interface CartService {
	public int addCart(CartVo vo);
	public int deleteAllCart(CartVo vo);
	public int deleteCart(CartVo vo);
	public List<CartVo> cartList(CartVo vo);
}
