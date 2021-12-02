package blueup.admin.util;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class Cool {
	public static void certifiedPhoneNumber(String phoneNumber, String cerNum) {
		String api_key = "";
		String api_secret = "5SXDPDHUFKGF2I4OHEJIEKBC5M5WRV9A";
		Message coolsms = new Message(api_key, api_secret);
		
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phoneNumber);
		params.put("from", "01098782174");
		params.put("type", "SMS");
		params.put("text", "[BlueUp] 인증 메시지 : ["+cerNum+"]");
		params.put("app_version", "test app 1.2");
		
		try {
			JSONObject obj = (JSONObject)coolsms.send(params);
			System.out.println(obj.toString());
			
		}catch(CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}
}
