package com.cos.roomescape.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CommentRespDto {
         private int id;  
         private int boardId;
         private String username;
         private String content;
         private Timestamp createDate;
         
}
