package com.hana7.springdemo.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;

@Service
@RequiredArgsConstructor
public class S3Service {
	private final S3Client s3Client;

	@Value("${cloud.aws.s3.bucket}")
	private String bucketName;

	public String uploadFile(MultipartFile file) throws IOException {
		String key = "uploads/" + file.getOriginalFilename();

		Path tempFile = Files.createTempFile("upload-", file.getOriginalFilename());
		file.transferTo(tempFile.toFile());
		PutObjectRequest putObjectRequest = PutObjectRequest.builder()
			.bucket(bucketName)
			.key(key)
			.contentType(file.getContentType())
			.build();
		s3Client.putObject(putObjectRequest, tempFile);
		Files.delete(tempFile);
		return "https://" + bucketName + ".s3." + s3Client.serviceClientConfiguration().region().id()
			+ ".amazonaws.com/" + key;
	}
}
