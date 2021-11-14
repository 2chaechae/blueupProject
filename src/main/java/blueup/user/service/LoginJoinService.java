package blueup.user.service;

import blueup.user.vo.UsersVo;

public interface LoginJoinService {
	
	public void getInsertUserInfo(UsersVo userVo);
	public int getUserId(UsersVo userVo);
}
