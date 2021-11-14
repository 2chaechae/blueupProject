package blueup.user.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.CartOptionDAO;
import blueup.user.vo.CartOptionVo;


@Service("CartOptionService")
public class CartOptionServiceImpl implements CartOptionService{
	@Autowired
	private CartOptionDAO cartoptionDao;

	@Override
	public List<CartOptionVo> cartOption(CartOptionVo vo) {
		return cartoptionDao.cartOption(vo);
	}
}
