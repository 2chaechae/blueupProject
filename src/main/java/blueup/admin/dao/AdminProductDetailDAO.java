package blueup.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.ProductContentVo;
import blueup.admin.vo.ProductVo;


@Repository
public class AdminProductDetailDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public List<ProductContentVo> getProductDetail(int product_no) {
		return sqlSssionTemplate.selectList("adminprodcutdetailDAO.getProductDetail", product_no);
	}
	
	/* ��ǰ �� ����*/
	public int updateProductDetail(ProductVo numberList) {
		return sqlSssionTemplate.update("adminprodcutdetailDAO.updateProductDetail", numberList);
	}
	
	/* ��ǰ �� ���*/
	public int addProductDetail(ProductVo vo) {
		return sqlSssionTemplate.insert("adminprodcutdetailDAO.addProductDetail", vo);
	}
}
