package com.cos.roomescape.dto;

import java.util.List;

import com.cos.roomescape.model.Review;

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
        private String name; 
        private String intro;
        private int rating;
        private List<ThemeRespDto> themes;
        private String info; 
        private Double mapLong;
        private Double mapLat;
        private Review[] reviews;
        
}
