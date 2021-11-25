package blueup.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
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
	
	/* 작성 폼으로 이동*/
	@RequestMapping("/moveToProductWrite.mdo")
	public ModelAndView moveToProductWrite() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminProductWrite");
		return mav;
	}
	
	/* 상품 목록 조회*/
	@RequestMapping("/getProductList.mdo")
	public ModelAndView getProductList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", adminproductserviceimpl.getProductList());
		mav.setViewName("adminProductList");
		return mav;
	}
	
	/* 특정 상품 가져오기*/
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
	
	/* 상품 수정 */
	@RequestMapping("/updateProduct.mdo")
	@ResponseBody
	public ModelAndView updateProduct(ProductVo vo) {
		ModelAndView mav = new ModelAndView();
		System.out.println("업데이트 시작");
		int result = adminproductserviceimpl.productUpdate(vo);
			if(result == 1) {
				System.out.println("업데이트 성공");
				/*파일 업로드*/
				List<MultipartFile> main = vo.getContentList();
				List<ProductContentVo> src = insertProduct(main, vo);
				for(int i=0; i < src.size(); i++) {
					System.out.println(src.get(i).getDetailed_product_content());
				}

				int result2 = adminproductdetailserviceimpl.updateProductDetail(src);
				if(result2 > 0) {
					System.out.println("디테일 업데이트 확인");
				}
				
				/*수정된 내역 다시 전송*/
				int product_no = vo.getProduct_no();
				mav.addObject("product", adminproductserviceimpl.getProduct(product_no));
				mav.addObject("productDetail", adminproductdetailserviceimpl.getProductDetail(product_no));
				mav.setViewName("adminProductView");
			}
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
					System.out.println("업로드 완료");
					for(int j=0; j < number.size(); j++) {
						if(number.get(j).getProduct_content_detail_no() == 0) {
							vo.setMain_image(uploadFolder+key);
						}else {
							number.get(j).setDetailed_product_content(uploadFolder+key);
						}
						vo.setNumber(number);
					}
				}
			}
		}catch(IOException e) {
			e.printStackTrace();
		}
		return vo;
	}
}
