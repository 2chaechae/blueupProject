package blueup.common.awsS3;

import java.io.File;
import java.io.InputStream;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class AwsS3 {

	//Amazon-s3-sdk
	private AmazonS3 s3Client;
	final private String accessKey = "AKIA6REFVHARBEZVKYJM";
	final private String secretKey = "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";
	private Regions clinetRegion = Regions.AP_NORTHEAST_2;
	private String bucket = "blueup";
	
	private AwsS3() {
		createS3Client();
	}
	
	//singleton pattern
	static private AwsS3 instance = null;
	
	public static AwsS3 getInstance() {
		if(instance == null) {
			return new AwsS3();
		}else {
			return instance;
		}
	}
	
	//aws S3 client 持失
	private void createS3Client() {
		AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		this.s3Client = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials)).withRegion(clinetRegion).build();
	}
	
	//upload
	public void upload(File file, String key) {
		uploadToS3(new PutObjectRequest(this.bucket, key, file));
	}
	
	public void upload(InputStream is, String key, String contentType, long contentLength) {
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentType(contentType);
		objectMetadata.setContentLength(contentLength);
		
		uploadToS3(new PutObjectRequest(this.bucket, key, is, objectMetadata));
	}
	
	private void uploadToS3(PutObjectRequest putObjectRequest) {
		try {
			this.s3Client.putObject(putObjectRequest);
			System.out.println(String.format("[%s] upload complete", putObjectRequest.getKey()));
		}catch(AmazonServiceException e) {
			e.printStackTrace();
		}catch(SdkClientException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// copy
	public void copy(String orgKey, String copyKey) {
		try {
			//copy 梓端 持失
			CopyObjectRequest copyObjRequest = new CopyObjectRequest(this.bucket, orgKey, this.bucket, copyKey);
			this.s3Client.copyObject(copyObjRequest);
			System.out.println(String.format("Finish copying [%s] to [%s]", orgKey, copyKey));
		}catch(AmazonServiceException e) {
			e.printStackTrace();
		}catch(SdkClientException e) {
			e.printStackTrace();
		}
	}
	
	//delete
	public void delete(String key) {
		try {
			DeleteObjectRequest deleteObjectRequest = new DeleteObjectRequest(this.bucket, key);
			this.s3Client.deleteObject(deleteObjectRequest);
			System.out.println(String.format("[%s] deletion complete", key));
		}catch(AmazonServiceException e) {
			e.printStackTrace();
		}catch(SdkClientException e) {
			e.printStackTrace();
		}
	}
}
