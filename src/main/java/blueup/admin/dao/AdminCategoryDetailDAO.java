package blueup.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.AdminCategoryDetailVo;


@Repository
public class AdminCategoryDetailDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public List<AdminCategoryDetailVo> getCategoryDetail(String category_name) {
		return sqlSssionTemplate.selectList("admincategorydetailDAO.getCategoryDetail", category_name);
	}
	
}
