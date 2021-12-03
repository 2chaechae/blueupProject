package blueup.admin.service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.AdminChartDAO;
import blueup.admin.vo.AdminOrderAmountVo;
import blueup.admin.vo.AdminOrderRankVo;
import blueup.admin.vo.ProductVo;

@Service("AdminGoogleChartService")
public class AdminGoogleChartServiceImpl implements AdminGoogleChartService{
	@Autowired
	private AdminChartDAO adminchartdao;

	@Override
	public JSONObject getChartData(String start, String end) {
		
		/* vo setting */
		HashMap<String, String> vo = new HashMap<String, String>();
		vo.put("start", start);
		vo.put("end", end);
		
		/* chart 자료 받아오기(DB) */
		List<AdminOrderAmountVo> items = adminchartdao.getOrderAmount(vo);
		
		/* return JSON Object 생성*/
		JSONObject data = new JSONObject();
		
		/* column Object 생성*/
		JSONObject day = new JSONObject();
		JSONObject price = new JSONObject();
		JSONObject count = new JSONObject();
		
		/* column setting*/
		JSONArray title = new JSONArray();
		day.put("label", "day");
		day.put("type", "number");
		price.put("label", "주문액");
		price.put("type", "number");
		count.put("label", "주문건");
		count.put("type", "number");
		
		/* 테이블에 컬럼 추가*/
		title.add(day);
		title.add(price);
		title.add(count);
		
		/* JSON 객체에 추가*/
		data.put("cols", title);
		
		if(items != null && items.size() != 0) {
			/* DB값을 JSON 객체에 추가*/
			JSONArray body = new JSONArray();
			System.out.println("값있음");
			for (AdminOrderAmountVo adminorderamountvo : items) {
				System.out.println(adminorderamountvo.getDay());
				JSONObject order_day = new JSONObject();
				order_day.put("v", adminorderamountvo.getDay());
				
				JSONObject order_totalPrice = new JSONObject();
				order_totalPrice.put("v", adminorderamountvo.getOrder_totalPrice());
				
				JSONObject order_count = new JSONObject();
				order_count.put("v", adminorderamountvo.getOrder_count());
				
				/*컬럼에 저장하기 위해 array 객체 생성*/
				JSONArray row = new JSONArray();
				row.add(order_day);
				row.add(order_totalPrice);
				row.add(order_count);
				
				/* 위에서 추가한 cell 2개를 합쳐서 추가*/
				JSONObject cell =new JSONObject();
				cell.put("c", row); 
				body.add(cell);
			}
			data.put("rows", body);
		}else {
			JSONArray body = new JSONArray();
			System.out.println("값없음");
			System.out.println(end);
			int m = Integer.parseInt(end.substring(8));
			System.out.println(m);
			for (int i=0; i <= m; i++) {
				JSONObject order_day = new JSONObject();
				order_day.put("v", i);
				
				JSONObject order_totalPrice = new JSONObject();
				order_totalPrice.put("v", 0);
				
				JSONObject order_count = new JSONObject();
				order_count.put("v", 0);
				
				/*컬럼에 저장하기 위해 array 객체 생성*/
				JSONArray row = new JSONArray();
				row.add(order_day);
				row.add(order_totalPrice);
				row.add(order_count);
				
				/* 위에서 추가한 cell 2개를 합쳐서 추가*/
				JSONObject cell =new JSONObject();
				cell.put("c", row); 
				body.add(cell);
			}
			data.put("rows", body);
		}
		return data;
	}

	@Override
	public JSONObject getOrderRateByProduct(String start, String end) {
		
		/* vo setting */
		HashMap<String, String> vo = new HashMap<String, String>();
		vo.put("start", start);
		vo.put("end", end);
		
		/* chart 자료 받아오기(DB) */
		List<AdminOrderRankVo> Rankitems = adminchartdao.getOrderRateByProduct(vo);
		
		/* return JSON Object 생성*/
		JSONObject data = new JSONObject();
		
		/* column Object 생성*/
		JSONObject sale = new JSONObject();
		JSONObject name = new JSONObject();
		JSONObject ratio = new JSONObject();
		
		/* column setting*/
		JSONArray title = new JSONArray();
		name.put("label", "판매상품");
		name.put("type", "string");
		sale.put("label", "판매액");
		sale.put("type", "number");
		ratio.put("label", "판매비율");
		ratio.put("type", "number");
		
		/* 테이블에 컬럼 추가*/
		title.add(name);
		title.add(sale);
		title.add(ratio);
		
		/* JSON 객체에 추가*/
		data.put("cols", title);
		
		if(Rankitems != null && Rankitems.size() != 0) {
			/* DB값을 JSON 객체에 추가*/
			JSONArray body = new JSONArray();
			System.out.println("값있음");
			for (AdminOrderRankVo adminorderrankvo : Rankitems) {
				
				JSONObject order_name = new JSONObject();
				order_name.put("v", adminorderrankvo.getProduct_name());
				
				JSONObject order_sale = new JSONObject();
				order_sale.put("v", adminorderrankvo.getSale());
				
				JSONObject order_ratio = new JSONObject();
				order_ratio.put("v", adminorderrankvo.getRatio());
				
				/*컬럼에 저장하기 위해 array 객체 생성*/
				JSONArray row = new JSONArray();
				row.add(order_name);
				row.add(order_sale);
				row.add(order_ratio);
				
				/* 위에서 추가한 cell 2개를 합쳐서 추가*/
				JSONObject cell =new JSONObject();
				cell.put("c", row); 
				body.add(cell);
			}
			data.put("rows", body);
		}else {
			JSONArray body = new JSONArray();
			System.out.println("값없음");
				JSONObject order_name = new JSONObject();
				order_name.put("v", "판매제품없음");
				
				JSONObject order_sale = new JSONObject();
				order_sale.put("v", 0);
				
				JSONObject order_ratio = new JSONObject();
				order_ratio.put("v", 100);
				
				/*컬럼에 저장하기 위해 array 객체 생성*/
				JSONArray row = new JSONArray();
				row.add(order_name);
				row.add(order_sale);
				row.add(order_ratio);
				
				/* 위에서 추가한 cell 2개를 합쳐서 추가*/
				JSONObject cell =new JSONObject();
				cell.put("c", row); 
				body.add(cell);
				data.put("rows", body);
		}
		return data;
	}

	
	@Override
	public JSONObject getProductRanking() {

		/* chart 자료 받아오기(DB) */
		List<ProductVo> Ranking = adminchartdao.getProductRanking();
		
		/* return JSON Object 생성*/
		JSONObject data = new JSONObject();
		
		/* column Object 생성*/
		JSONObject name = new JSONObject();
		JSONObject count = new JSONObject();
		
		/* column setting*/
		JSONArray title = new JSONArray();
		name.put("label", "상품명");
		name.put("type", "string");
		count.put("label", "조회수");
		count.put("type", "number");
		
		/* 테이블에 컬럼 추가*/
		title.add(name);
		title.add(count);
		
		/* JSON 객체에 추가*/
		data.put("cols", title);
		
		if(Ranking != null && Ranking.size() != 0) {
			/* DB값을 JSON 객체에 추가*/
			JSONArray body = new JSONArray();
			System.out.println("값있음");
			for (ProductVo productvo : Ranking) {
				
				JSONObject ranking_name = new JSONObject();
				ranking_name.put("v", productvo.getProduct_name());
				
				JSONObject ranking_count = new JSONObject();
				ranking_count.put("v", productvo.getViewCount());

				/*컬럼에 저장하기 위해 array 객체 생성*/
				JSONArray row = new JSONArray();
				row.add(ranking_name);
				row.add(ranking_count);
				
				/* 위에서 추가한 cell 2개를 합쳐서 추가*/
				JSONObject cell =new JSONObject();
				cell.put("c", row); 
				body.add(cell);
			}
			data.put("rows", body);
		}else {
			JSONArray body = new JSONArray();
			System.out.println("값없음");
				JSONObject ranking_name = new JSONObject();
				ranking_name.put("v", "랭킹상품없음");
				
				JSONObject ranking_count = new JSONObject();
				ranking_count.put("v", 0);
				
				/*컬럼에 저장하기 위해 array 객체 생성*/
				JSONArray row = new JSONArray();
				row.add(ranking_name);
				row.add(ranking_count);
				
				/* 위에서 추가한 cell 2개를 합쳐서 추가*/
				JSONObject cell =new JSONObject();
				cell.put("c", row); 
				body.add(cell);
				data.put("rows", body);
		}
		return data;
	}


}
