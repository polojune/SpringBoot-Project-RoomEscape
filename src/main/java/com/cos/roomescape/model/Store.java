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
public class Store {
      private int id; 
      private String intro;
      private String name;
      private String info; 
      private String homepage;
      private Double mapLong;
      private Double mapLat;
      private Timestamp createDate;
           
}
