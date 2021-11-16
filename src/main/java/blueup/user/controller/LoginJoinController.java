package blueup.user.controller;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView join(HttpServletRequest request, UsersVo userVo) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("join");
		if(request.getParameter("logintype") != null) {
			String logintype = request.getParameter("logintype").toString();
			if(userVo != null) {
				mav.addObject("userVo", userVo);
				mav.addObject("logintype", logintype);
			}
		}
		
		return mav;
	}
	
	@RequestMapping("/movedIndex.do")
	public ModelAndView movedIndex(HttpServletRequest request, HttpSession session, UsersVo userVo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("indexmlb");
		
		return mav;
	}
	
	@RequestMapping("/pwchkPage.do")
	public ModelAndView pwchkPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pwchk");
		
		return mav;
	}
	
	@RequestMapping("/quitPage.do")
	public ModelAndView quitPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("quit");
		
		return mav;
	}
	
	@RequestMapping("/findIdPwPage.do")
	public ModelAndView findIdPwPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("findIdPw");
		
		return mav;
	}
	
	@RequestMapping("/foundIdPage.do")
	public ModelAndView foundIdPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("foundId");
		
		return mav;
	}
	
	@RequestMapping("/foundPwPage.do")
	public ModelAndView foundPwPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("foundPw");
		
		return mav;
	}
	
	@RequestMapping("/insertJoin.do")
	public ModelAndView getInsertJoin(HttpServletRequest request, HttpSession session, UsersVo userVo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("indexmlb");
		
		String emailRecptnAgrYn = request.getParameter("emailRecptnAgrYn").toString();
		String smsRecptnAgrYn = request.getParameter("smsRecptnAgrYn").toString();
		String pw = userVo.getUser_password().toString();
		
		SHA256 sha256 = new SHA256(); //����� �н����� ��ȣȭ
		
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
	
	@RequestMapping("/loginChkId.do")
	@ResponseBody
	public Map<String,Object> loginChkId(UsersVo userVo) {
		Map<String,Object> result = new HashMap<String,Object>();
		
		String pw = userVo.getUser_password().toString();
		List<UsersVo> vo = new ArrayList<UsersVo>();
		vo = null;
		
		SHA256 sha256 = new SHA256(); //����� �н����� ��ȣȭ
		
		try {
			pw = sha256.encrypt(pw);
			userVo.setUser_password(pw);
			
			int userIdChkNum = loginjoinserviceimpl.getLoginIdChk(userVo);
			if(userIdChkNum == 1) {
				vo = loginjoinserviceimpl.getUserInfo(userVo); //���ǿ� �÷��� ���� ����
			}
			
			System.out.println("qweqwe___ userIdChkNum___ " + userIdChkNum);
			System.out.println("qweqwe___ vo___ " + vo);
			
			if(vo != null) {
				result.put("userInfo", vo.get(0));
			} else {
				result.put("userInfo", "");
			}
			
			result.put("userIdChkNum", userIdChkNum);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@RequestMapping("/PwChk.do")
	@ResponseBody
	public Map<String,Object> PwChk(UsersVo userVo) {
		Map<String,Object> result = new HashMap<String,Object>();
		
		String pw = userVo.getUser_password().toString();
		
		SHA256 sha256 = new SHA256(); //����� �н����� ��ȣȭ
		
		try {
			pw = sha256.encrypt(pw);
			userVo.setUser_password(pw);
			
			System.out.println("qweqwe____ " + userVo);
			
			int userPwChkNum = loginjoinserviceimpl.getPwChk(userVo);
		
			result.put("userPwChkNum", userPwChkNum);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@RequestMapping("/quit.do")
	@ResponseBody
	public Map<String,Object> Quit(UsersVo userVo) {
		Map<String,Object> result = new HashMap<String,Object>();
		loginjoinserviceimpl.getQuit(userVo);
		
		return result;
	}
}
