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
	public int deleteCart(CartVo vo) {
		return cartdao.deleteCart(vo);
	}

	@Override
	public int deleteAllCart(CartVo vo) {
		return cartdao.deleteAllCart(vo);
	}

	@Override
	public List<CartVo> cartList(String user_no) {
		return cartdao.cartList(user_no);
	}

	@Override
	public int updateCart(CartVo vo) {
		return cartdao.updateCart(vo);
	}

	@Override
	public int updateCartNum(CartVo vo) {
		return cartdao.updateCartNum(vo);
	}

	
}
