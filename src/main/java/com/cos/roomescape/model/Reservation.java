package com.cos.roomescape.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Reservation {
      private int id; 
      private Timestamp reserveDate;
      private int userId;      
      private int storeId; 
      private int themeId;      
      private Timestamp createDate;
}
