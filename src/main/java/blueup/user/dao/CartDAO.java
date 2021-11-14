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

	/* īƮ���� */
	public CartVo cartList(CartVo vo) {
		return sqlSessionTemplate.selectOne("cartDao.cartList", vo);
	}

	/* īƮ��ȸ */
	public List<CartVo>  getcartList(CartVo vo) {
		return sqlSessionTemplate.selectList("cartDao.getcartList" , vo);
	}

	/* īƮ ���� */
	public int updateCart(CartVo vo) {
		return sqlSessionTemplate.update("cartDao.updateCart", vo);
	}
	
	

}
