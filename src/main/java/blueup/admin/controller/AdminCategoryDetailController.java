package blueup.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import blueup.admin.service.AdminCategoryDetailServiceImpl;
import blueup.admin.vo.AdminCategoryDetailVo;

@Controller
public class AdminCategoryDetailController {
	@Autowired 
	private AdminCategoryDetailServiceImpl admincategorydetailserviceimpl;
	
	@RequestMapping("/getCategoryDetailList.mdo")
	@ResponseBody
	public List<AdminCategoryDetailVo> getCategoryDetailList(String category_name) {
		System.out.println("카테고리");
		List<AdminCategoryDetailVo> category = new ArrayList<AdminCategoryDetailVo>();
		category = admincategorydetailserviceimpl.getCategoryDetail(category_name);
		return category;
	}
}
