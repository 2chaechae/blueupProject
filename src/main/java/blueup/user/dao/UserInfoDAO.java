package blueup.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.UsersVo;


@Repository("userInfoDAO")
public class UserInfoDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public UsersVo getUserDao(UsersVo vo) {
		return sqlSession.selectOne("userInfoMyBatis.getUserInfo", vo);
	}
	
	public void updateUserDao(UsersVo vo) {
		sqlSession.update("userInfoMyBatis.updateUser", vo);
	}
	
}
