package blueup.user.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.CartVo;
import blueup.user.vo.NoticeVo;

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

	/* 카트선택 */
	public List<CartVo> cartList(String user_no) {
		return sqlSessionTemplate.selectList("cartDao.cartList", user_no);
	}

	public List<CartVo> selectedcartList(List<String> cart_no) {
		return sqlSessionTemplate.selectList("cartDao.selectedcartList", cart_no);
	}
	
	/* 카트 수정 */
	public int updateCartNum(CartVo vo) {
		return sqlSessionTemplate.update("cartDao.updateCartNum", vo);
	}
}
