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

	public int getPwChk(UsersVo userVo) {
		int userPwChkNum = loginjoindao.PwChk(userVo);
		return userPwChkNum;
	}

	public void getQuit(UsersVo userVo) {
		loginjoindao.quit(userVo);
		
	}

	public int getCertPhone(UsersVo userVo) {
		int chkNum = loginjoindao.certPhone(userVo);
		return chkNum;
	}

	public List<UsersVo> getFoundUserId(UsersVo userVo) {
		List<UsersVo> vo = loginjoindao.foundUserId(userVo);
		return vo;
	}

	public List<UsersVo> getRgstTime(UsersVo userVo) {
		return loginjoindao.rgstTime(userVo);
	}

	public List<UsersVo> getFoundEmailId(UsersVo userVo) {
		List<UsersVo> vo = loginjoindao.foundEmailId(userVo);
		return vo;
	}

	public int getUserEmailId(UsersVo userVo) {
		int countEmail = loginjoindao.userEmailId(userVo);
		return countEmail;
	}

	public void getUpdateNewInfo(UsersVo userVo) {
		loginjoindao.updateNewInfo(userVo);
	}

}
