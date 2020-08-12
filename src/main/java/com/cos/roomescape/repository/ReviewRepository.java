package com.cos.roomescape.repository;

import com.cos.roomescape.dto.ReviewRespDto;

public interface ReviewRepository {
      
	public ReviewRespDto findByUserId(int id);
}
