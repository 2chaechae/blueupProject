package blueup.admin.service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.dao.AdminChartDAO;
import blueup.admin.vo.AdminOrderAmountVo;

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
		
		/* chart �ڷ� �޾ƿ���(DB) */
		List<AdminOrderAmountVo> items = adminchartdao.getOrderAmount(vo);
		
		/* return JSON Object ����*/
		JSONObject data = new JSONObject();
		
		/* column Object ����*/
		JSONObject day = new JSONObject();
		JSONObject price = new JSONObject();
		JSONObject count = new JSONObject();
		
		/* column setting*/
		JSONArray title = new JSONArray();
		day.put("label", "day");
		day.put("type", "number");
		price.put("label", "�ֹ���");
		price.put("type", "number");
		count.put("label", "�ֹ���");
		count.put("type", "number");
		
		/* ���̺� �÷� �߰�*/
		title.add(day);
		title.add(price);
		title.add(count);
		
		/* JSON ��ü�� �߰�*/
		data.put("cols", title);
		
		if(items != null && items.size() != 0) {
			/* DB���� JSON ��ü�� �߰�*/
			JSONArray body = new JSONArray();
			System.out.println("������");
			for (AdminOrderAmountVo adminorderamountvo : items) {
				System.out.println(adminorderamountvo.getDay());
				JSONObject order_day = new JSONObject();
				order_day.put("v", adminorderamountvo.getDay());
				
				JSONObject order_totalPrice = new JSONObject();
				order_totalPrice.put("v", adminorderamountvo.getOrder_totalPrice());
				
				JSONObject order_count = new JSONObject();
				order_count.put("v", adminorderamountvo.getOrder_count());
				
				/*�÷��� �����ϱ� ���� array ��ü ����*/
				JSONArray row = new JSONArray();
				row.add(order_day);
				row.add(order_totalPrice);
				row.add(order_count);
				
				/* ������ �߰��� cell 2���� ���ļ� �߰�*/
				JSONObject cell =new JSONObject();
				cell.put("c", row); 
				body.add(cell);
			}
			data.put("rows", body);
		}else {
			JSONArray body = new JSONArray();
			System.out.println("������");
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
				
				/*�÷��� �����ϱ� ���� array ��ü ����*/
				JSONArray row = new JSONArray();
				row.add(order_day);
				row.add(order_totalPrice);
				row.add(order_count);
				
				/* ������ �߰��� cell 2���� ���ļ� �߰�*/
				JSONObject cell =new JSONObject();
				cell.put("c", row); 
				body.add(cell);
			}
			data.put("rows", body);
		}
		return data;
	}


}
