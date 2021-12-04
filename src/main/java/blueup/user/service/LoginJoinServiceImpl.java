package blueup.user.service;

import java.util.List;

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

	public int getLoginIdChk(UsersVo userVo) {
		int userIdChkNum = loginjoindao.loginIdChk(userVo);
		return userIdChkNum;
	}

	public List<UsersVo> getUserInfo(UsersVo userVo) {
		List<UsersVo> vo = loginjoindao.userInfo(userVo);
		return vo;
	}

	}

}
