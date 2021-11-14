package blueup.user.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.CartOptionVo;

@Repository
public class CartOptionDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<CartOptionVo> cartOption(CartOptionVo vo) {
		return sqlSessionTemplate.selectList("cartoptionDao.searchCartOption", vo);
	}

}
