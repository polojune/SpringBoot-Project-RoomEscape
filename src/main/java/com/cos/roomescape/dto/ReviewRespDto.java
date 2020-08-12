package com.cos.roomescape.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReviewRespDto {
        
	private int id; 
	private String username; 
	private String content;
	private int rating;
}
