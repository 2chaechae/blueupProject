package blueup.admin.controller;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.service.AdminGoogleChartServiceImpl;

@Controller
public class AdminChartController {
	@Autowired 
	private AdminGoogleChartServiceImpl admingooglechartserviceimpl;

	
	/* 차트 폼으로 이동*/
	@RequestMapping("/getChartForm.mdo")
	public ModelAndView moveToProductWrite(String start, String end) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.setViewName("adminAvg");
		return mav;
	}
	
	/* 차트 데이터 가져오기*/
	@RequestMapping("/getChartData.mdo")
	@ResponseBody
	public JSONObject getChartData(@RequestParam(value="start")String start, @RequestParam(value="end")String end){
		return admingooglechartserviceimpl.getChartData(start, end);
	}

}
