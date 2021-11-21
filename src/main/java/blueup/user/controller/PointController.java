package blueup.user.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.paging.Criteria;
import blueup.user.paging.PageMaker;
import blueup.user.service.PointService;
import blueup.user.vo.PointVo;
import blueup.user.vo.UsersVo;

@Controller
public class PointController {
	@Autowired
	@Qualifier("pointService")
	PointService service;
	
	@RequestMapping("/point.do")
	public ModelAndView point(int pageNum, int user_no) {
		ModelAndView mav = new ModelAndView();
		Criteria cri = new Criteria();
		PageMaker pm = new PageMaker();
		Map<String, Object> map = new HashMap<String, Object>();
		int count = service.getCountService(user_no);
		cri.setPage(pageNum);
		cri.setPageStart();
		pm.setCri(cri);
		pm.setTotalCount(count);
		map.put("startRow", cri.getStartRow());
		map.put("perPageNum", cri.getPerPageNum());
		map.put("user_no", user_no);
		System.out.println("user_no : "+user_no);
		
		int total_point = service.getToTalPointService(user_no);
		int total_saved_money = service.getSavedMoneyService(user_no);
		List<PointVo> list = service.getPointListService(map);
		
		mav.addObject("user_no", user_no);
		mav.addObject("pageMaker", pm);
		mav.addObject("point_count", count);
		mav.addObject("pointList",list);
		mav.addObject("saved_money", total_saved_money);
		mav.addObject("total_point", total_point);
		mav.setViewName("point");
		return mav;
	}
	
	
	@RequestMapping("/searchPoint.do")
	@ResponseBody
	public Map<String, Object> getPointListBySearch(int user_no, String start, String end){
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> returnMap = new HashMap<String, Object>();
		map.put("dateStart", start);
		map.put("dateEnd", end);
		map.put("user_no", user_no);
		
		List<PointVo> list = service.getListBySearchService(map);
		int count = service.getCountBySearchService(map);
		
		for(PointVo vo : list) {
			if(vo.getRemarks()==null) {
				vo.setRemarks("");
			}
		}
		returnMap.put("listValue", list);
		returnMap.put("countValue", count);
		
		return returnMap;
	}
}