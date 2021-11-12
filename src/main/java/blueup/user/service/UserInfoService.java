package blueup.user.service;

import blueup.user.vo.UsersVo;

public interface UserInfoService {
	public UsersVo getUserService(UsersVo vo);
	
	public void updateUserService(UsersVo vo);
}
