package blueup.user.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import blueup.user.vo.UsersVo;

@Controller
public class LoginJoinController {
	
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/join.do")
	public String join(UsersVo userVo, Model model) {
		
		System.out.println("qweqwe___ userVo 값 세팅 테스트 ______ " + userVo.getUser_name());
		System.out.println("qweqwe___ userVo 값 세팅 테스트 ______ " + userVo.getUser_gender());
		System.out.println("qweqwe___ userVo 값 세팅 테스트 ______ " + userVo.getEmail_address());
		
		return "join";
	}
	
}
