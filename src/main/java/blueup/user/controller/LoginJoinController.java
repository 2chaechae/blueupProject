package blueup.user.controller;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.util.SHA256;
import blueup.user.service.LoginJoinServiceImpl;
import blueup.user.vo.UsersVo;

@Controller
public class LoginJoinController {
	
	@Autowired
	private LoginJoinServiceImpl loginjoinserviceimpl;
	
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/join.do")
	public String join(UsersVo userVo, Model model) {
		
		return "join";
	}
	
	@RequestMapping("/insertJoin.do")
	public ModelAndView getInsertJoin(HttpServletRequest request, HttpSession session, UsersVo userVo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("indexmlb");
		
		String emailRecptnAgrYn = request.getParameter("emailRecptnAgrYn").toString();
		String smsRecptnAgrYn = request.getParameter("smsRecptnAgrYn").toString();
		String pw = userVo.getUser_password().toString();
		
		SHA256 sha256 = new SHA256(); //사용자 패스워드 암호화
		
		try {
			pw = sha256.encrypt(pw);
			
			if(emailRecptnAgrYn.equals("Y")){
				userVo.setAgree_email(true);
			} else {
				userVo.setAgree_email(false);
			}
			
			
			if(smsRecptnAgrYn.equals("Y")){
				userVo.setAgree_sns(true);
			} else {
				userVo.setAgree_sns(false);
			}
			
			userVo.setNewbie(true);
			userVo.setUser_password(pw);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		loginjoinserviceimpl.getInsertUserInfo(userVo);
		
		return mav;
	}
	
	@RequestMapping("/overlapChkId.do")
	@ResponseBody
	public Map<String,Object> overlapChkId(UsersVo userVo) {
		Map<String,Object> result = new HashMap<String,Object>();
		
		int chkNum = loginjoinserviceimpl.getUserId(userVo);
		
		result.put("chkNum", chkNum);
		
		return result;
	}
	
}
