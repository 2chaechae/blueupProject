package blueup.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.AdminCategoryDetailDAO;
import blueup.admin.vo.AdminCategoryDetailVo;

@Service("AdminCategoryDetialService")
public class AdminCategoryDetailServiceImpl implements AdminCategoryDetailService{
	@Autowired
	private AdminCategoryDetailDAO admincategorydetaildao;

	@Override
	public List<AdminCategoryDetailVo> getCategoryDetail(String category_name) {
		return admincategorydetaildao.getCategoryDetail(category_name);
	}




}
