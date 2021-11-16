package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import blueup.user.vo.UsersVo;

@Repository
public class LoginJoinDAO {
	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public void insertUserInfo(UsersVo userVo) {
		sqlSssionTemplate.insert("loginjoinDao.insertUserInfo", userVo);
	}

	public int userId(UsersVo userVo) {
		return sqlSssionTemplate.selectOne("loginjoinDao.userId", userVo);
	}

	public int loginIdChk(UsersVo userVo) {
		return sqlSssionTemplate.selectOne("loginjoinDao.loginIdChk", userVo);
	}

	public List<UsersVo> userInfo(UsersVo userVo) {
		return sqlSssionTemplate.selectList("loginjoinDao.userInfo", userVo);
	}
	
	public int PwChk(UsersVo userVo) {
		return sqlSssionTemplate.selectOne("loginjoinDao.PwChk", userVo);
	}

	public void quit(UsersVo userVo) {
		sqlSssionTemplate.selectOne("loginjoinDao.quit", userVo);
	}

}
