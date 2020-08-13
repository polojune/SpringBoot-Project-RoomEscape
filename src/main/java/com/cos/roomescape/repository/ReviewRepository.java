package com.cos.roomescape.repository;



import java.util.List;

import com.cos.roomescape.dto.ReviewRespDto;

public interface ReviewRepository {
      
	public List<ReviewRespDto> findByUserId(int id);
}
