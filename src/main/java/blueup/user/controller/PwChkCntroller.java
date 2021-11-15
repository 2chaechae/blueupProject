package blueup.user.controller;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.util.SHA256;
import blueup.user.service.PwChkServiceImpl;
import blueup.user.vo.UsersVo;

@Controller
public class PwChkCntroller {


	@Autowired 
	private PwChkServiceImpl pwchkserviceimpl;
	 
	
	@RequestMapping("/pwchkPage.do")
	public ModelAndView pwchk() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pwchk");
		
		return mav;
	}
	
	@RequestMapping("/pwchk.do")
	@ResponseBody
	public Map<String,Object> pwchk(UsersVo userVo) {
		Map<String,Object> result = new HashMap<String,Object>();
		
		String pw = userVo.getUser_password().toString();
		
		SHA256 sha256 = new SHA256(); //사용자 패스워드 암호화
		
		try {
			pw = sha256.encrypt(pw);
			userVo.setUser_password(pw);
			
			int userPwChkNum = pwchkserviceimpl.getPwChk(userVo);
		
			result.put("userIdChkNum", userPwChkNum);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
