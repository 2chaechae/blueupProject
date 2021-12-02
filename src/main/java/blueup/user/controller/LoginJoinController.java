package blueup.user.controller;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.util.Cool;
import blueup.admin.util.SHA256;
import blueup.user.service.LoginJoinServiceImpl;
import blueup.user.vo.UsersVo;

@Controller
public class LoginJoinController {
	
	@Autowired
	private LoginJoinServiceImpl loginjoinserviceimpl;
	
	@Inject
	JavaMailSender mailSender;     //���� ���񽺸� ����ϱ� ���� �������� ������.
	
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
	public ModelAndView foundIdPage(HttpServletRequest request, HttpSession session, UsersVo userVo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("foundId");
		String userId = userVo.getUser_id();
		
		List<UsersVo> list = loginjoinserviceimpl.getRgstTime(userVo);
		
		System.out.println("qweqwe_____ " + list.get(0).getUser_registration_time());
		
		mav.addObject("rgstTime", list.get(0).getUser_registration_time());
		mav.addObject("user_id", userId);
		
		return mav;
	}
	
	@RequestMapping("/foundId.do")
	@ResponseBody
	public Map<String,Object> foundId(String user_name, String phone1, String phone2, String phone3) {
		Map<String,Object> map = new HashMap<String,Object>();
		
		UsersVo userVo = new UsersVo();
		userVo.setUser_name(user_name);
		userVo.setPhone1(phone1);
		userVo.setPhone2(phone2);
		userVo.setPhone3(phone3);
		
		List<UsersVo> list = loginjoinserviceimpl.getFoundUserId(userVo);
		
		map.put("list", list.get(0));
	
		return map;
	}
	
	@RequestMapping("/foundEmailId.do")
	@ResponseBody
	public Map<String,Object> foundEmailId(String user_name, String email_id, String email_address) {
		Map<String,Object> map = new HashMap<String,Object>();
		
		UsersVo userVo = new UsersVo();
		userVo.setUser_name(user_name);
		userVo.setEmail_id(email_id);
		userVo.setEmail_address(email_address);
		
		List<UsersVo> list = loginjoinserviceimpl.getFoundEmailId(userVo);
		
		map.put("list", list.get(0));
	
		return map;
	}
	
	@RequestMapping("/foundPwPage.do")
	public ModelAndView foundPwPage(HttpServletRequest request, HttpSession session, UsersVo userVo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("foundPw");
		
		String user_id = userVo.getUser_id().toString();
		mav.addObject("user_id", user_id);
		
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
	
	@RequestMapping("/getSendSMS.do")
	@ResponseBody
	public Map<String,Object> getSendSMS(String phone1,String phone2, String phone3, String user_name, String gubn) {
		Random rand = new Random();
		Map<String,Object> map = new HashMap<String,Object>();
		
		String numStr = "";
		String errorMsg = "";
		String sendingMsg = "";
		String phoneNumber = phone1 + phone2 + phone3;
		
		for(int i = 0; i<4;i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr+=ran;
		}
		
		if(gubn.equals("2")) {
			
			UsersVo userVo = new UsersVo();
			userVo.setUser_name(user_name);
			userVo.setPhone1(phone1);
			userVo.setPhone2(phone2);
			userVo.setPhone3(phone3);
			
			int chkNum = loginjoinserviceimpl.getCertPhone(userVo);
			
			if(chkNum > 0) {
				Cool.certifiedPhoneNumber(phoneNumber, numStr);
				sendingMsg = "������ȣ�� �߼��߽��ϴ�. �޴����� Ȯ�� ���ּ���";
				map.put("sendingMsg", sendingMsg);
			} else {
				errorMsg = "�ش� ������ �������� �ʽ��ϴ�";
				numStr = "0";
			}
			map.put("errorMsg", errorMsg);
			
		} else if(gubn.equals("1")) {
			
			Cool.certifiedPhoneNumber(phoneNumber, numStr);
			
		}
		
		map.put("numStr", numStr);
		
		return map;
	}
	
	@RequestMapping("/logout.do")
	@ResponseBody
	public int logout(HttpSession session ) {
		session.invalidate();
		return 1;
	}

	
	@RequestMapping("/newPass.do")
	public ModelAndView newPass(HttpServletRequest request, HttpSession session, UsersVo userVo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");

		String pw = userVo.getUser_password().toString();
		
		SHA256 sha256 = new SHA256(); //����� �н����� ��ȣȭ
		
		try {
			pw = sha256.encrypt(pw);
			
			userVo.setUser_password(pw);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		loginjoinserviceimpl.getInsertUserInfo(userVo);
		
		return mav;
	}
	
	//����
    @RequestMapping("/sendingEmail.do")
    @ResponseBody
    public Map<String,Object> sendingEmail(HttpServletRequest request, UsersVo userVo) throws IOException {
        Random r = new Random();
        Map<String,Object> map = new HashMap<String,Object>();
        int dice = r.nextInt(4589362) + 49311; //�̸��Ϸ� �޴� �����ڵ� �κ� (����)
        
        int countEmail =  loginjoinserviceimpl.getUserEmailId(userVo);
        
        if(countEmail == 1) {
        	String setfrom = "hajinlee00@gamil.com";
            String tomail = request.getParameter("e_mail"); // �޴� ��� �̸���
            String title = "ȸ������ ���� �̸��� �Դϴ�."; // ����
            
            String content = System.getProperty("line.separator")+ //���پ� �ٰ����� �α����� �ۼ�
            				 System.getProperty("line.separator")+
            				 "�ȳ��ϼ��� ȸ���� ���� Ȩ�������� ã���ּż� �����մϴ�"+
            				 System.getProperty("line.separator")+
            				 System.getProperty("line.separator")+
            				 " ������ȣ�� " +dice+ " �Դϴ�. "+
            				 System.getProperty("line.separator")+
            				 System.getProperty("line.separator")+
            				 "������ ������ȣ�� Ȩ�������� �Է��� �ֽø� �������� �Ѿ�ϴ�."; // ����
            
            try {
                MimeMessage message = mailSender.createMimeMessage();
                MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

                messageHelper.setFrom(setfrom); // �����»�� �����ϸ� �����۵��� ����
                messageHelper.setTo(tomail); // �޴»�� �̸���
                messageHelper.setSubject(title); // ���������� ������ �����ϴ�
                messageHelper.setText(content); // ���� ����
                
                mailSender.send(message);
                
            } catch (Exception e) {
                System.out.println(e);
            }
            map.put("errorMsg", "");
            map.put("dice", dice);
            
        }else {
        	String errorMsg = "�ش� ������ �������� �ʽ��ϴ�.";
        	 map.put("errorMsg", errorMsg);
        	 map.put("dice", 0);
        }
        return map;
        
    }
    

	@RequestMapping("/foundPw.do")
	@ResponseBody
	public Map<String,Object> foundPw(UsersVo userVo) {
		Map<String,Object> result = new HashMap<String,Object>();
		
		String pw = userVo.getUser_password().toString();
		
		SHA256 sha256 = new SHA256(); //����� �н����� ��ȣȭ
		
		try {
			pw = sha256.encrypt(pw);
			userVo.setUser_password(pw);
			
			loginjoinserviceimpl.getUpdateNewInfo(userVo);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}