package blueup.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import blueup.user.dao.UserInfoDAO;
import blueup.user.vo.UsersVo;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {
	@Autowired
	@Qualifier("userInfoDAO")
	UserInfoDAO userInfoDao;
	
	@Override
	public UsersVo getUserService(UsersVo vo) {
		return userInfoDao.getUserDao(vo);
	}

	@Override
	public void updateUserService(UsersVo vo) {
		userInfoDao.updateUserDao(vo);
	}
	
	
	

}
