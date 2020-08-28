package com.cos.roomescape.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Schedule {
	private int id;
	private int themeId;
	private Timestamp startTime;
	private boolean available;
}
