package com.hana7.springdemo.jpa.dto;

import java.time.LocalDateTime;
import java.util.List;

import com.hana7.springdemo.jpa.entity.Reply;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Getter @Setter
@SuperBuilder
public class BoardDetailResponseDTO extends BoardResponseDTO {
	private String content;

	private List<ReplyResponseDTO> replies;
}
