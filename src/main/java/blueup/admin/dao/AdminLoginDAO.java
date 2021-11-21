package blueup.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.AdminVo;

@Repository
public class AdminLoginDAO {
	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;

	public AdminVo getAdminLogin(AdminVo vo){
		return sqlSssionTemplate.selectOne("adminloginDAO.adminlogin", vo);
	}
}
