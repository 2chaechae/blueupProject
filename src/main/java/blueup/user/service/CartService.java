package blueup.user.service;

import java.util.List;


import blueup.user.vo.CartVo;

public interface CartService {
	public int addCart(CartVo vo);
	public int deleteAllCart(String user_no);
	public int deleteCart(List<String> cart_no);
	public List<CartVo> cartList(String user_no);
	public List<CartVo> selectedcartList(List<String> cart_no);
	public List<CartVo> selectProductNo(String user_no);
	public int updateCartNum(CartVo vo);
}
