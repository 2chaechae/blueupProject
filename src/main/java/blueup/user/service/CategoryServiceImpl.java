package blueup.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.CategoryDAO;
import blueup.user.vo.CategoryVo;
import blueup.user.vo.Category_detailVo;

@Service("CategoryService")
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	private CategoryDAO categorydao;

	@Override
	public List<Category_detailVo> getCategory(Category_detailVo vo) {
		return categorydao.getCategory(vo);
	}

}
