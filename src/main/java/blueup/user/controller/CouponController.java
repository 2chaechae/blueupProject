package blueup.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blueup.user.paging.Criteria;
import blueup.user.paging.PageMaker;
import blueup.user.service.CouponService;
import blueup.user.vo.CouponVo;
import blueup.user.vo.UsersVo;

@Controller
public class CouponController {
	@Autowired
	@Qualifier("couponService")
	CouponService service;

	@RequestMapping("/coupon.do")
	public ModelAndView coupon(int user_no, int pageNum) {
		ModelAndView mav = new ModelAndView();
		Criteria cri = new Criteria();
		PageMaker pm = new PageMaker();
		UsersVo vo = new UsersVo();
		vo.setUser_no(user_no);
		cri.setPage(pageNum);
		cri.setPerPageNum(pageNum);
		cri.setPageStart();
		pm.setCri(cri);
		vo.setPerPageNum(cri.getPerPageNum());
		vo.setStartRow(cri.getStartRow());

		int count = service.getCouponCountService(vo);
		pm.setTotalCount(count);
		List<CouponVo> list = service.getCouponListService(vo);
		List<CouponVo> usedCouponList = service.getUnavailableCouponListService(vo);
		for(CouponVo vv : usedCouponList) {
			if(vv.getCoupon_use_date()!=null) {
				vv.setRemarks("사용완료");
			}else {
				vv.setRemarks("만료됨");
			}
		}
		mav.setViewName("coupon");
		mav.addObject("usedCouponList",usedCouponList);
		mav.addObject("pageMaker", pm);
		mav.addObject("criteria", cri);
		mav.addObject("count", count);
		mav.addObject("list", list);
		mav.addObject("user_no", user_no);
		return mav;
	}

	@RequestMapping("/unavailableCoupon.do")
	@ResponseBody
	public List<CouponVo> getUnavailableCouponList(String start, String end) {
		Map<String, Object> map = new HashMap<String, Object>();
		UsersVo vo = new UsersVo();
		vo.setUser_no(6);
		map.put("userVo", vo);
		map.put("dateStart", start);
		map.put("dateEnd", end);
		
		List<CouponVo> list =  service.getUnavailableCouponListBySearchService(map);
		for(CouponVo coupon : list) {
			if(coupon.getCoupon_use_date()!= null) {
				coupon.setRemarks("사용완료");
			}else {
				coupon.setRemarks("만료됨");
			}
		}
		return list;
	}
	
	

}
