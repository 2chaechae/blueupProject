package blueup.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import blueup.user.dao.LoginJoinDAO;
import blueup.user.vo.UsersVo;


@Service("LoginJoinService")
public class LoginJoinServiceImpl implements LoginJoinService{
	
	@Autowired
	private LoginJoinDAO loginjoindao;
	
	public void getInsertUserInfo(UsersVo userVo) {
		loginjoindao.insertUserInfo(userVo);
	}

	public int getUserId(UsersVo userVo) {
		int chkNum = loginjoindao.userId(userVo);
		return chkNum;
	}

	

}
