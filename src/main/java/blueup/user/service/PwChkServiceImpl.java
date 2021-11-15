package blueup.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.PwChkDAO;
import blueup.user.vo.UsersVo;

@Service("PwChkService")
public class PwChkServiceImpl  implements PwChkService{
	
	@Autowired
	private PwChkDAO pwchkdao;

	public int getPwChk(UsersVo userVo) {
		int num = 0;
		return num;
	}
}
