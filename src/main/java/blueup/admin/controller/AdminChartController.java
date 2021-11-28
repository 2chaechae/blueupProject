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

	
	/* ��Ʈ ������ �̵�*/
	@RequestMapping("/getChartForm.mdo")
	public ModelAndView moveToProductWrite(String start, String end) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.setViewName("adminAvg");
		return mav;
	}
	
	/* �ֹ���-�ֹ��Ǽ� ��Ʈ ������ ��������*/
	@RequestMapping("/getChartData.mdo")
	@ResponseBody
	public JSONObject getChartData(@RequestParam(value="start")String start, @RequestParam(value="end")String end){
		return admingooglechartserviceimpl.getChartData(start, end);
	}
	
	/* ��� �ֹ��� ��ǰ�� ���� ��Ʈ ������ ��������  */
	@RequestMapping("/getOrderRateByProduct.mdo")
	@ResponseBody
	public JSONObject getOrderRateByProduct(@RequestParam(value="start")String start, @RequestParam(value="end")String end){
		return admingooglechartserviceimpl.getOrderRateByProduct(start, end);
	}
	
	/* ��ȸ�� ���� ���� ��ŷ ������ ��������*/
	@RequestMapping("/getProductRanking.mdo")
	@ResponseBody
	public JSONObject getProductRanking(){
		return admingooglechartserviceimpl.getProductRanking();
	}
}
