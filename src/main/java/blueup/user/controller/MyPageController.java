package blueup.user.controller;

import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.util.Cool;
import blueup.admin.util.SHA256;
import blueup.user.service.UserInfoService;
import blueup.user.vo.UsersVo;

@Controller
public class MyPageController {
	@Autowired
	@Qualifier("userInfoService")
	UserInfoService service;

	@RequestMapping("userInfo.do")
	public ModelAndView getUserInfo(int user_no) {
		ModelAndView mav = new ModelAndView();
		UsersVo vo = new UsersVo();
		vo.setUser_no(user_no);
		UsersVo userVo = service.getUserService(vo);
		System.out.println("불러온 userVO 이름 : " + userVo.getUser_id());
		String jumin = userVo.getUser_jumin1();// 주민번호 앞자리 추출
		String jumin2 = userVo.getUser_jumin2();
		String yy = jumin.substring(0, 2);
		String mm = jumin.substring(2, 4);
		String dd = jumin.substring(4, 6);
		String gender_code = jumin2.substring(0, 1);
		if (gender_code.equals("1") || gender_code.equals("2")) {
			yy = "19" + yy + "년";
		} else {
			yy = "20" + yy + "년";
		}
		mm = mm + "월";
		dd = dd + "일";
		mav.addObject("yy", yy);
		mav.addObject("mm", mm);
		mav.addObject("dd", dd);
		mav.addObject("userVo", userVo);
		mav.addObject("user_no", user_no);
		mav.setViewName("userInfo");
		return mav;
	}
	
	@RequestMapping(value="pwCheck.do", method=RequestMethod.POST)
	@ResponseBody
	public boolean PwCheck(String pw) {
		System.out.println(pw);
		boolean check = false;
		//영문 숫자 조합에 대한 정규표현식
		String pw_chk = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$";
		Pattern pattern_symbol = Pattern.compile(pw_chk);
		Matcher matcher_symbol = pattern_symbol.matcher(pw);
		if(matcher_symbol.find()) {
			check = true;
		}
		System.out.println(check);
		return check;
	}
	
	@RequestMapping("modifyUser.do")
	public ModelAndView modifyUser(
			@RequestParam("user_no") int user_no,
			@RequestParam("user_password") String user_password,
			@RequestParam("user_email") String email_id,
			@RequestParam("user_email_domain") String email_address,
			@RequestParam("zipcode") String zipcode,
			@RequestParam("address") String address,
			@RequestParam("detailed_address") String detailed_address,
			@RequestParam(required=false, value="smsRecptnAgrYn") String agree_sns,
			@RequestParam(required=false, value="emailRecptnAgrYn") String agree_email) throws NoSuchAlgorithmException {
		ModelAndView mav = new ModelAndView();
		UsersVo vo = new UsersVo();
		SHA256 sha256 = new SHA256();
		String password;
		boolean email;
		boolean sns;
		password = sha256.encrypt(user_password);
		vo.setUser_no(user_no);
		vo.setUser_password(password);
		vo.setEmail_id(email_id);
		vo.setEmail_address(email_address);
		vo.setZipcode(zipcode);
		vo.setAddress(address);
		vo.setDetailed_address(detailed_address);
		System.out.println(agree_email);
		System.out.println(agree_sns);
		if(agree_email!=null) {
			email = Boolean.valueOf(agree_email);
		}else {
			agree_email = "false";
			email = Boolean.valueOf(agree_email);
		}
		
		if(agree_sns!=null) {
			sns = Boolean.valueOf(agree_sns);
		}else {
			agree_sns = "false";
			sns = Boolean.valueOf(agree_sns);
		}
		
		vo.setAgree_email(email);
		vo.setAgree_sns(sns);
		service.updateUserService(vo);
		mav.setViewName("redirect:/userInfo.do");
		return mav;
	}
	
	@RequestMapping("sendSMS.do")
	public @ResponseBody JSONObject sendSMS(String phoneNumber) {
		Random rand = new Random();
		String numStr = "";
		
		for(int i = 0; i<4;i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr+=ran;
		}
		
		System.out.println("수신자 번호 : "+ phoneNumber);
		Cool.certifiedPhoneNumber(phoneNumber, numStr);
		
		System.out.println("numStr : "+ numStr);
		
		JSONObject obj = new JSONObject();
		obj.put("numStr", numStr);
		
		return obj;
	}
	
	@RequestMapping("veriCheck.do")
	@ResponseBody
	public boolean veriCheck(String value, String spanValue) {
		boolean chk = false;
		if(value.equals(spanValue)) {
			chk = true;
		}
		return chk;
	}
	
	@RequestMapping("passwordChk.do")
	@ResponseBody
	public boolean passwordChk(String password, String passwordChk) {
		boolean chk = false;
		if(password.equals(passwordChk)) {
			chk = true;
		}
		return chk;
	}

}
