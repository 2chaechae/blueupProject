package blueup.user.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.admin.vo.ProductVo;
import blueup.user.dao.ProductDAO;
import blueup.user.vo.CategoryVo;
import blueup.user.vo.Category_detailVo;

@Service("ProductService")
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO productdao;
	
	/* ī�װ� ���� ��ǰ ����Ʈ*/
	@Override
	public List<ProductVo> getProductListByCategory(HashMap<Object, Object> vo) {
		return productdao.getProductListByCategory(vo); 
	}

	/* ���� ī�װ� ���� ��ǰ ����Ʈ*/
	@Override
	public List<ProductVo> getProductListByDetailedCategory(HashMap<Object, Object> vo) {
		return productdao.getProductListByDetailedCategory(vo);
	}
	
	/* �ϳ� ��ǰ ���� ��ȸ*/
	@Override
	public ProductVo getProduct(ProductVo vo) {
		return productdao.getProduct(vo);
	}
	
	/* ��ǰ ���� ����Ʈ ��ȸ*/
	@Override
	public List<ProductVo> getProductList() {
		return productdao.getProductList();
	}
	
	/* ���ø���Ʈ ��ǰ */
	@Override
	public List<ProductVo> getProductListBywishList(String id) {
		return productdao.getProductListBywishList(id);
	}

	/* ���� ī�װ��� �Խù� �� */
	@Override
	public int getCountProductDetail(HashMap<Object, Object> vo) {
		return  productdao.getCountProductDetail(vo);
	}
	
	/* ī�װ��� �Խù� �� */
	@Override
	public int getCountProduct(HashMap<Object, Object> vo) {
		return productdao.getCountProduct(vo);
	}

	/* ��ȸ�� */
	@Override
	public int updateViewCount(ProductVo vo) {
		return productdao.updateViewCount(vo);
	}
	
	/* ���� ��ǰ ����Ʈ */
	@Override
	public List<ProductVo> getSaleProduct(HashMap<Object, Object> vo) {
		return productdao.getSaleProduct(vo);
	}
	
	/* ���� ��ǰ ���� */
	@Override
	public int getSaleProductCount() {
		return productdao.getSaleProductCount();
	}
	
	@Override
	public void insertProduct(ProductVo vo) {
		productdao.insertProduct(vo);
	}
	
	
	@Override
	public void updateProduct(ProductVo vo) {
		productdao.updateProduct(vo);
	}


	@Override
	public List<ProductVo> getProductListBySearch(ProductVo vo) {
		return productdao.getProductListBySearch(vo);
	}

	@Override
	public List<ProductVo> getSaleProductNonMember(HashMap<Object, Object> vo) {
		return productdao.getSaleProductNonMember(vo);
	}

	@Override
	public List<ProductVo> getProductMain() {
		return productdao.getProductMain();
	}
}
