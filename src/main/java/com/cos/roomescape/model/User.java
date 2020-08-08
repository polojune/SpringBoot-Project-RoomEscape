package com.cos.roomescape.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
      private int id; 
      private String username;
      private String password;      
      private String email; 
      private String role;
      private String provider;
      private String providerId;
      private Timestamp createDate;
      
  	//ENUM으로 안하고 ,로 해서 구분해서 ROLE을 입력 -> 그걸 파싱!!
  	public List<String> getRoleList() {
  		if (this.role.length() > 0) {
  			return Arrays.asList(this.role.split(","));
  		}
  		return new ArrayList<>();
  	}    
}
