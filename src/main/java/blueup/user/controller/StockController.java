package blueup.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import blueup.admin.vo.StockVo;
import blueup.user.service.StockServiceImpl;

@Controller
public class StockController {

	@Autowired
	private StockServiceImpl stockserviceimpl;

	// 재고확인
	@RequestMapping("/getStockbyProductno.do")
	@ResponseBody
	public List<StockVo> getStockbyProductno(StockVo vo){
		System.out.println("재고확인");
		List<StockVo> result = stockserviceimpl.getStockbyProductno(vo);
		for(StockVo m : result) {
			System.out.println(m.getProduct_size());
		}
		return result;
	}
}
