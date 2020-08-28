package com.cos.roomescape.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.roomescape.dto.CommonRespDto;
import com.cos.roomescape.model.Comment;
import com.cos.roomescape.model.Review;
import com.cos.roomescape.service.ReviewService;

@Controller
public class ReviewController {
        @Autowired
        private ReviewService reviewService;
	

	   @PutMapping("/review") 
	   public @ResponseBody CommonRespDto<?> save(@RequestBody Review review){
		   System.out.println("review: " + review);
		   
		   int result = reviewService.댓글달기(review);
		   
		   if(result !=1) {
			   return new CommonRespDto<String>(0,"댓글작성 실패");
		   }
		   
		   return new CommonRespDto<String>(1,"댓글작성  성공");
	   }
}
