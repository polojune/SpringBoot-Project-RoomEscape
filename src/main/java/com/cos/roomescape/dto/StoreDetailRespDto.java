package com.cos.roomescape.dto;

import java.util.List;

import com.cos.roomescape.model.Review;
import com.cos.roomescape.model.Store;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StoreDetailRespDto {
        private int id; 
        private Store store;
        private List<ThemeRespDto> themes;
      
        private List<ReviewRespDto> reviews;
        
}
