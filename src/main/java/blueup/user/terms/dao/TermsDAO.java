package blueup.user.terms.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.terms.vo.Terms_and_conditionVo;

@Repository
public class TermsDAO {
	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public Terms_and_conditionVo getTermsContent(Terms_and_conditionVo vo) {
		System.out.println("dao");
		Terms_and_conditionVo vo1 = sqlSssionTemplate.selectOne("termsVO.getTermsContent", vo);
		System.out.println(vo1.getTerms_subtitle());
		return  sqlSssionTemplate.selectOne("termsVO.getTermsContent", vo);
	}
}
