package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.CartDAO;
import blueup.user.vo.CartVo;

@Service("CartService")
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDAO cartdao;
	
	@Override
	public int addCart(CartVo vo) {
		return cartdao.addCart(vo);
	}
	
	@Override
	public int deleteCart(List<String> cart_no) {
		return cartdao.deleteCart(cart_no);
	}

	@Override
	public int deleteAllCart(String user_no) {
		return cartdao.deleteAllCart(user_no);
	}

	@Override
	public List<CartVo> cartList(String user_no) {
		return cartdao.cartList(user_no);
	}

	@Override
	public int updateCartNum(CartVo vo) {
		return cartdao.updateCartNum(vo);
	}

	@Override
	public List<CartVo> selectedcartList(List<String> cart_no) {
		return cartdao.selectedcartList(cart_no);
	}

	@Override
	public List<CartVo> selectProductNo(String user_no) {
		return cartdao.selectProductNo(user_no);
	}

}
