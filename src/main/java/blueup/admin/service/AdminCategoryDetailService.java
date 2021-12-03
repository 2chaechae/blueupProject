package blueup.admin.service;

import java.util.List;

import blueup.admin.vo.AdminCategoryDetailVo;

public interface AdminCategoryDetailService {
	public List<AdminCategoryDetailVo> getCategoryDetail(String category_name);
	
}
