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
	
	public int addCart(CartVo vo) {
		return sqlSessionTemplate.insert("cartDao.addCart", vo);
	}
	
	/*īƮ ����*/
	public int deleteAllCart(String user_no) {
		return sqlSessionTemplate.delete("cartDao.deleteAllCart", user_no);
	}
	
	public int deleteCart(List<String> cart_no) {
		return sqlSessionTemplate.delete("cartDao.deleteCart", cart_no);	
	}
	
	/* īƮ���� */
	public List<CartVo> cartList(String user_no) {
		return sqlSessionTemplate.selectList("cartDao.cartList", user_no);
	}

	public List<CartVo> selectedcartList(List<String> cart_no) {
		return sqlSessionTemplate.selectList("cartDao.selectedcartList", cart_no);
	}
	
	public List<CartVo> selectProductNo(String user_no) {
		return sqlSessionTemplate.selectList("cartDao.selectProductNo", user_no);
	}
	/* īƮ ���� */
	public int updateCartNum(CartVo vo) {
		return sqlSessionTemplate.update("cartDao.updateCartNum", vo);
	}
}
