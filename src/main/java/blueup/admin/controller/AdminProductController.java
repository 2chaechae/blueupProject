package blueup.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.io.FileSystemUtils;
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
		int product_no = vo.getProduct_no();
			/*사진 수정사항o*/
			if(vo.getContentList() != null) {
				/*파일 업로드*/
				List<MultipartFile> main = vo.getContentList();
				ProductVo number = updateProduct(main, vo); // 상품 수정 사진 upload 및 경로 얻는 메서드 사용
				
				/* 상품 및 상품 디테일 업데이트*/
				int result2 = adminproductdetailserviceimpl.updateProductDetail(number);
				adminproductserviceimpl.productUpdate(number);
			}else {
			/*사진 수정사항x*/
				adminproductserviceimpl.productUpdate(vo);
			}
			/*수정 사항 반영된 상품 정보 mav에 넣고, 전달*/
			mav.addObject("product", adminproductserviceimpl.getProduct(product_no));
			mav.addObject("productDetail", adminproductdetailserviceimpl.getProductDetail(product_no));
			mav.setViewName("adminProductView");
		return mav;
	}
	
	/*상품 수정 - 사진 업로드 및 경로 리턴*/
	public ProductVo updateProduct(List<MultipartFile> imageList, ProductVo vo){
		String uploadFolder = "https://blueup.s3.ap-northeast-2.amazonaws.com/"; // s3주소
		List<ProductContentVo> number = vo.getNumber(); // content_no 리스트
		try {
			if(imageList != null) {
				for(int i=0; i < imageList.size(); i++) {
					String key = "product/" + vo.getCategory_name() + "/" + imageList.get(i).getOriginalFilename();	//사진 경로
					InputStream is = imageList.get(i).getInputStream();
					String contentType = imageList.get(i).getContentType();
					long contentLength = imageList.get(i).getSize();
					awsS3.upload(is, key, contentType, contentLength);	//s3 업로드
					System.out.println("업로드 완료");
					/*메인 사진 경로 셋팅*/
					if(number.get(i).getProduct_content_detail_no() == 0) {	
						vo.setMain_image(uploadFolder+key);
					}else {
					/*content 사진 경로 셋팅*/
						number.get(i).setDetailed_product_content(uploadFolder+key);
						System.out.println("업로드경로" + uploadFolder+key);
					}
					vo.setNumber(number);
				}
			}
		}catch(IOException e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	/* 상품 등록 */
	@RequestMapping("/addProduct.mdo")
	@ResponseBody
	public ModelAndView addProduct(ProductVo vo) {
		ModelAndView mav = new ModelAndView();
		List<MultipartFile> main = vo.getContentList();
		ProductVo pvo = insertProduct(main, vo);
		int result = adminproductserviceimpl.addProduct(pvo);
		if(result == 1) {
			int product_no = adminproductserviceimpl.getProductNo();
			List<ProductContentVo> detail = pvo.getNumber();
			for(int i=0; i < detail.size(); i++) {
				detail.get(i).setProduct_no(product_no);
			}
			pvo.setNumber(detail);
			adminproductdetailserviceimpl.addProductDetail(pvo);
		}
		mav.setViewName("redirect:/getProductList.mdo");
		return mav;
	}
	
	/*상품 등록 - 사진 업로드 및 경로 리턴*/
	public ProductVo insertProduct(List<MultipartFile> imageList, ProductVo vo) {
		
		String uploadFolder = "https://blueup.s3.ap-northeast-2.amazonaws.com/";
		List<ProductContentVo> detail = new ArrayList<ProductContentVo>(); 
		try {
			if(imageList != null) {
				for(int i=0; i < imageList.size(); i++) {
					if(imageList.get(i).getOriginalFilename() != "") {
						String key = "product/" + vo.getCategory_name() + "/" + imageList.get(i).getOriginalFilename();	//사진 경로
						InputStream is = imageList.get(i).getInputStream();
						String contentType = imageList.get(i).getContentType();
						long contentLength = imageList.get(i).getSize();
						awsS3.upload(is, key, contentType, contentLength);	//s3 업로드
						System.out.println("업로드 완료");
						System.out.println(i);
						if( i == 0) {
							vo.setMain_image(uploadFolder + key);
						}else if( i < 7){
							ProductContentVo tmp = new ProductContentVo();
							tmp.setContent_type("top");
							tmp.setDetailed_product_content(uploadFolder + key);
							detail.add(tmp);
							System.out.println("top");
						}else if(i < 11) {
							ProductContentVo tmp = new ProductContentVo();
							tmp.setContent_type("main");
							tmp.setDetailed_product_content(uploadFolder + key);
							detail.add(tmp);
							System.out.println("main");
						}else {
							ProductContentVo tmp = new ProductContentVo();
							tmp.setContent_type("bottom");
							tmp.setDetailed_product_content(uploadFolder + key);
							detail.add(tmp);
							System.out.println("bottom");
						}
					}
				vo.setNumber(detail);
				}
			}
		}catch(IOException e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	/* 검색어 기준으로 상품 조회*/
	@RequestMapping("/getProductBySearch.mdo")
	@ResponseBody
	public ModelAndView getProductBySearch(String search){
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", adminproductserviceimpl.getProductBySearch(search));
		mav.setViewName("adminSearchHtml");
		return mav;
	}
}
