package blueup.user.service;

import java.util.List;

import blueup.user.vo.UsersVo;

public interface LoginJoinService {
	
	public void getInsertUserInfo(UsersVo userVo);
	public int getUserId(UsersVo userVo);
	public int getLoginIdChk(UsersVo userVo);
	
}
