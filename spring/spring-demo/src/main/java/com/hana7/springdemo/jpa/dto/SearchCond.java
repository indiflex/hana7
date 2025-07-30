package com.hana7.springdemo.jpa.dto;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Builder
@Getter
@Setter
@ToString

public class SearchCond {
	private String searchNickname;
	private String searchEmail;

	@Builder.Default
	private Integer page = 1;
	@Builder.Default
	private Integer size = 5;
	@Builder.Default
	private String sortField = "id";
	@Builder.Default
	private String sortDirection = "desc";

	public Pageable getPager() {
		if (page == null)
			page = 1;
		if (size == null)
			size = 5;
		if (sortField == null)
			sortField = "id";
		if (sortDirection == null)
			sortDirection = "desc";

		Sort sort = Sort.by(Sort.Direction.fromString(sortDirection), sortField);

		return PageRequest.of(page - 1, size, sort);
	}
}
