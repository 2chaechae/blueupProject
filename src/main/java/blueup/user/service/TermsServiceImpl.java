package blueup.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.dao.TermsDAO;
import blueup.user.vo.Terms_and_conditionVo;

@Service("termsService")
public class TermsServiceImpl implements TermsService{
	@Autowired
	private TermsDAO termsDAO;

	@Override
	public Terms_and_conditionVo getTermsContent(Terms_and_conditionVo vo) {
		return termsDAO.getTermsContent(vo);
	
	}
}
