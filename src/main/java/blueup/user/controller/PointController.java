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
	public ModelAndView point(HttpServletRequest request, int pageNum) {
		/*
		 * HttpSession session = request.getSession(); String user_id = (String)
		 * session.getAttribute("user_id"); String user_no = (String)
		 * session.getAttribute("user_no");
		 */
		Criteria cri = new Criteria();
		PageMaker pm = new PageMaker();
		Map<String, Object> map = new HashMap<String, Object>();
		int count = service.getCountService(1);
		cri.setPage(pageNum);
		cri.setPageStart();
		pm.setCri(cri);
		pm.setTotalCount(count);
		map.put("startRow", cri.getStartRow());
		map.put("perPageNum", cri.getPerPageNum());
		map.put("user_no", 1);
		
		
		ModelAndView mav = new ModelAndView();
		int total_point = service.getToTalPointService(1);
		int total_saved_money = service.getSavedMoneyService(1);
		List<PointVo> list = service.getPointListService(map);
		
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
	public Map<String, Object> getPointListBySearch(HttpServletRequest request,String start, String end){
		//HttpSession session = request.getSession();
		//session.getAttribute;
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> returnMap = new HashMap<String, Object>();
		map.put("dateStart", start);
		map.put("dateEnd", end);
		map.put("user_no", 1);
		
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