package blueup.user.service;

import java.util.List;

import blueup.user.vo.UsersVo;

public interface LoginJoinService {
	
	public void getInsertUserInfo(UsersVo userVo);
	public int getUserId(UsersVo userVo);
	public int getLoginIdChk(UsersVo userVo);
	public int getPwChk(UsersVo userVo);
	public void getQuit(UsersVo userVo);
	public int getCertPhone(UsersVo userVo);
	public List<UsersVo> getFoundUserId(UsersVo userVo);
	public List<UsersVo> getRgstTime(UsersVo userVo);
	public List<UsersVo> getFoundEmailId(UsersVo userVo);
	public int getUserEmailId(UsersVo userVo);
	public void getUpdateNewInfo(UsersVo userVo);
}
