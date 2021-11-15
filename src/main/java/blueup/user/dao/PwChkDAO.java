package blueup.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PwChkDAO {
	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
}
