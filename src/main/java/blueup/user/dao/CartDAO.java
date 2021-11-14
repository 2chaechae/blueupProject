package blueup.user.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.CartVo;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int deleteCart(CartVo vo) {
		return sqlSessionTemplate.delete("cartDao.deleteCart", vo);
		
	}
	public int addCart(CartVo vo) {
		return sqlSessionTemplate.insert("cartDao.addCart", vo);
	}
	public int deleteAllCart(CartVo vo) {
		return sqlSessionTemplate.delete("cartDao.deleteAllCart", vo);
	}
	public List<CartVo> cartList(CartVo vo) {
		return sqlSessionTemplate.selectList("cartDao.cartList", vo);
	}
	
	

}
