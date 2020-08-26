package com.cos.roomescape.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Comment {
      private int id; 
      private int userId; 
      private int boardId; 
      private String content;
      private Timestamp createDate;
}
