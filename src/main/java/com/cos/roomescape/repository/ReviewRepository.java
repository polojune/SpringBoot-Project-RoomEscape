package com.cos.roomescape.repository;



import java.util.List;

import com.cos.roomescape.dto.ReviewRespDto;

public interface ReviewRepository {
      
	public List<ReviewRespDto> findByStoreId(int id);
	public List<ReviewRespDto> findByThemeId(int id);
	
	
}
