package com.cos.roomescape.dto;

import lombok.Data;

// book.js에서 ajax로 가져올 때 사용

@Data
public class ReserveStoreRespDto {
	private int id;
	private String name;
}
