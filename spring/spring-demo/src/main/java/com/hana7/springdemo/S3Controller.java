package com.hana7.springdemo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.hana7.springdemo.service.S3Service;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/public")
@RequiredArgsConstructor
public class S3Controller {
	private final S3Service s3Service;

	@PostMapping("/uploads")
	public ResponseEntity<String> upload(@RequestParam("image") MultipartFile file) {
		try {
			String url = s3Service.uploadFile(file);
			return ResponseEntity.ok(url);
		} catch (Exception e) {
			return ResponseEntity.internalServerError().body("UpFailed:" + e.getMessage());
		}
	}
}
