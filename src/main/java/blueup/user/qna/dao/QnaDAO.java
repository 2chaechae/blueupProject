package blueup.user.qna.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.main.vo.QnaVo;
import blueup.user.terms.vo.Terms_and_conditionVo;

@Repository
public class QnaDAO {
	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public List<QnaVo> getQnaListLimitTen() {
		System.out.println("QnaDAOÀÇ getQnaList ¹ßµ¿!");
		return  sqlSssionTemplate.selectList("qnaDao.getQnaListTen");
	}
}
