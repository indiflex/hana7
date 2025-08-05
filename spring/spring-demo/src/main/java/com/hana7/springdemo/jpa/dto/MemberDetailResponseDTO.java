package com.hana7.springdemo.jpa.dto;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@SuperBuilder
@Getter
@Setter
public class MemberDetailResponseDTO extends MemberDTO {
	private int auth;
	private List<BoardDetailResponseDTO> boards;
	private List<MemberImageDTO> images;
}
