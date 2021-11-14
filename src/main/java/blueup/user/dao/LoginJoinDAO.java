package blueup.user.dao;

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
	
}
