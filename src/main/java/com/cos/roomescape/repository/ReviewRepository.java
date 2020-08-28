package com.cos.roomescape.repository;



import java.util.List;

import com.cos.roomescape.dto.ReviewRespDto;
import com.cos.roomescape.model.Comment;
import com.cos.roomescape.model.Review;

public interface ReviewRepository {
      
	public int save(Review review);
	public List<ReviewRespDto> findByStoreId(int id);
	public List<ReviewRespDto> findByThemeId(int id);
	
	
}
