package com.hana7.springdemo.jpa.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hana7.springdemo.jpa.dto.MemberDTO;
import com.hana7.springdemo.jpa.dto.SearchCond;
import com.hana7.springdemo.jpa.dto.UploadRequestDTO;
import com.hana7.springdemo.jpa.service.MemberService;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/members")
@RequiredArgsConstructor
@Slf4j
public class MemberController {
	private final MemberService service;

	@Value("${upload.path}")
	private String uploadPath = "src/main/resources";

	@Tag(name = "file upload")
	@Operation(summary = "Upload POST Member")
	@PostMapping(value = "/upload", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public String upload(UploadRequestDTO dto) {
		log.info("upfileDto={}", dto);
		log.info("uploadPath={}", uploadPath);
		if (dto.getFiles() != null) {
			dto.getFiles().forEach(file -> {
				String orgFname = file.getOriginalFilename();
				log.info("orgName={}", orgFname + "::" + file.getSize() / 1024);
				String uuid = UUID.randomUUID().toString();
				Path upfilePath = Paths.get(uploadPath, uuid + "_" + orgFname);
				try {
					Path uploadDir = Paths.get(uploadPath);
					if (!Files.exists(uploadDir)) {
						Files.createDirectories(uploadDir);
					}
					file.transferTo(upfilePath);
				} catch (IOException e) {
					log.error(e.getMessage());
					throw new RuntimeException(e);
				}
			});
		}

		return "File Upload!";
	}

	@GetMapping()
	@Tag(name = "회원 목록", description = "회원 페이징 목록")
	@Operation(summary = "/members?page=1...", description = "회원목록")
	List<MemberDTO> findMembers(
		@Parameter(example = """
			{
				"page": 1,
				"size": 5,
				"searchNickname": "x",
				"searchEmail:: null,
				"sortField": "id",
				"sortDirection" : "asc"
			}
			""")
		SearchCond searchCond) {
		System.out.println("searchCond = " + searchCond.getPager());
		return service.findAll(searchCond);
	}

	@GetMapping("{id}")
	@Tag(name = "회원 상세")
	@Operation(summary = "/members/2", description = "회원 작성된 글 포함")
	@Parameters({
		@Parameter(name = "id", description = "회원 번호", example = "2"),
	})
	MemberDTO getMember(@PathVariable Long id) {
		return service.findOne(id);
	}

	@DeleteMapping("{id}")
	ResponseEntity<?> remove(@PathVariable Long id) {
		long ret = service.remove(id);
		if (ret > 0)
			return ResponseEntity.ok(ret);

		return ResponseEntity.status(HttpStatus.NOT_FOUND).body(id + "is Not Found!");
	}
}
