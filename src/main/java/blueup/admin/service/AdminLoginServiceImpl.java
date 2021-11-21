package blueup.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.AdminLoginDAO;
import blueup.admin.vo.AdminVo;

@Service("AdminLoginService")
public class AdminLoginServiceImpl implements AdminLoginService {
	@Autowired
	private AdminLoginDAO adminloginDAO;

	@Override
	public AdminVo adminlogin(AdminVo vo) {
		return adminloginDAO.getAdminLogin(vo);
	}

}
