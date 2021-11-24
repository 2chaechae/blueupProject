package blueup.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import blueup.admin.service.AdminCategoryDetailServiceImpl;
import blueup.admin.vo.AdminCategoryDetailVo;

@Controller
public class AdminCategoryDetailController {
	@Autowired 
	private AdminCategoryDetailServiceImpl admincategorydetailserviceimpl;
	
	@RequestMapping("/getCategoryDetailList.mdo")
	public List<AdminCategoryDetailVo> getCategoryDetailList(String category_name) {
		List<AdminCategoryDetailVo> category = new ArrayList<AdminCategoryDetailVo>();
		category = admincategorydetailserviceimpl.getCategoryDetail(category_name);
		return category;
	}
}
