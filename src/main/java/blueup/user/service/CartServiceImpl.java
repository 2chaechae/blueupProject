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
	public CartVo cartList(CartVo vo) {
		return cartdao.cartList(vo);
	}
	@Override
	public List<CartVo> getcartList(CartVo vo) {
		return cartdao.getcartList(vo);
	}
	@Override
	public int updateCart(CartVo vo) {
		return cartdao.updateCart(vo);
	}

	
}
