package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.vo.CategoryVo;
import blueup.user.vo.Category_detailVo;

@Repository
public class CategoryDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public List<Category_detailVo> getCategory(CategoryVo vo, ModelAndView mav) {
		return sqlSssionTemplate.selectList("categoryDao.getCategory", vo);
	}

}
