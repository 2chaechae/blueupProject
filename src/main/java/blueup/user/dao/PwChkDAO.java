package blueup.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.UsersVo;

@Repository
public class PwChkDAO {
	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;

	public int pwChk(UsersVo userVo) {
		return sqlSssionTemplate.selectOne("pwchkDAO");
	}
}
