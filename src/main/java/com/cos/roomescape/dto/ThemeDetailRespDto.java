package com.cos.roomescape.dto;

import java.util.List;

import com.cos.roomescape.model.Review;
import com.cos.roomescape.model.Store;
import com.cos.roomescape.model.Theme;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ThemeDetailRespDto {
        private int id; 
        private Theme theme;
        private String storeName;
        private List<ThemeRespDto> themes;
      
        private List<ReviewRespDto> reviews;
        
}
