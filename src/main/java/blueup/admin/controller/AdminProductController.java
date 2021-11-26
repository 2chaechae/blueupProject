package blueup.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import blueup.admin.service.AdminProductDetailServiceImpl;
import blueup.admin.service.AdminProductServiceImpl;
import blueup.admin.vo.ProductContentVo;
import blueup.admin.vo.ProductVo;
import blueup.common.awsS3.AwsS3;

@Controller
public class AdminProductController {
	@Autowired 
	private AdminProductServiceImpl adminproductserviceimpl;
	@Autowired 
	private AdminProductDetailServiceImpl adminproductdetailserviceimpl;
	public AwsS3 awsS3 = AwsS3.getInstance();
	
	/* �ۼ� ������ �̵�*/
	@RequestMapping("/moveToProductWrite.mdo")
	public ModelAndView moveToProductWrite() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminProductWrite");
		return mav;
	}
	
	/* ��ǰ ��� ��ȸ*/
	@RequestMapping("/getProductList.mdo")
	public ModelAndView getProductList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", adminproductserviceimpl.getProductList());
		mav.setViewName("adminProductList");
		return mav;
	}
	
	/* Ư�� ��ǰ ��������*/
	@RequestMapping("/getProduct.mdo")
	public ModelAndView getProduct(int product_no) {
		ModelAndView mav = new ModelAndView();
		ProductVo vo = adminproductserviceimpl.getProduct(product_no);
		System.out.println(vo.getCategory_name());
		mav.addObject("product", adminproductserviceimpl.getProduct(product_no));
		mav.addObject("productDetail", adminproductdetailserviceimpl.getProductDetail(product_no));
		mav.setViewName("adminProductView");
		return mav;
	}
	
	/* ��ǰ ���� */
	@RequestMapping("/updateProduct.mdo")
	@ResponseBody
	public ModelAndView updateProduct(ProductVo vo) {
		ModelAndView mav = new ModelAndView();
		int product_no = vo.getProduct_no();
			if(vo.getContentList() != null) {
				/*���� ���ε�*/
				List<MultipartFile> main = vo.getContentList();
				ProductVo number = insertProduct(main, vo);
				int result2 = adminproductdetailserviceimpl.updateProductDetail(number);
				adminproductserviceimpl.productUpdate(number);
				if(result2 > 0) {
					System.out.println("��ǰ ������ ������Ʈ �Ϸ�");
				}
			}else {
				adminproductserviceimpl.productUpdate(vo);
			}
			mav.addObject("product", adminproductserviceimpl.getProduct(product_no));
			mav.addObject("productDetail", adminproductdetailserviceimpl.getProductDetail(product_no));
			mav.setViewName("adminProductView");
		return mav;
	}
	
	@RequestMapping("/insertProduct.mdo")
	public ProductVo insertProduct(List<MultipartFile> imageList, ProductVo vo){
		String uploadFolder = "https://blueup.s3.ap-northeast-2.amazonaws.com/";
		List<ProductContentVo> number = vo.getNumber();
		try {
			if(imageList != null) {
				for(int i=0; i < imageList.size(); i++) {
					String key = "product/" + vo.getCategory_name() + "/" + imageList.get(i).getOriginalFilename();
					InputStream is = imageList.get(i).getInputStream();
					String contentType = imageList.get(i).getContentType();
					long contentLength = imageList.get(i).getSize();
					awsS3.upload(is, key, contentType, contentLength);
					System.out.println("���ε� �Ϸ�");
					if(number.get(i).getProduct_content_detail_no() == 0) {
							vo.setMain_image(uploadFolder+key);
					}else {
							number.get(i).setDetailed_product_content(uploadFolder+key);
							System.out.println("���ε���" + uploadFolder+key);
					}
						vo.setNumber(number);
				}
			}
		}catch(IOException e) {
			e.printStackTrace();
		}
		return vo;
	}
}
