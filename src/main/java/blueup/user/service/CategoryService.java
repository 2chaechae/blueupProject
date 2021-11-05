package blueup.user.service;

import java.util.List;

import blueup.user.vo.CategoryVo;
import blueup.user.vo.Category_detailVo;

public interface CategoryService {
	public List<Category_detailVo> getCategory(Category_detailVo vo);
}
