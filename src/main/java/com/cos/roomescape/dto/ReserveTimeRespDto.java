package com.cos.roomescape.dto;

import lombok.Data;

@Data
public class ReserveTimeRespDto {
	private int id;
	private int themeId;
	private String reserveTime;
	private boolean available;
}
