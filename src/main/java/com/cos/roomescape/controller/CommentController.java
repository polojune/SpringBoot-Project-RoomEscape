package com.cos.roomescape.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.roomescape.dto.CommonRespDto;
import com.cos.roomescape.model.Comment;
import com.cos.roomescape.service.CommentService;

@Controller
public class CommentController {
       
	   @Autowired
	   private CommentService commentService;
	   
	
	   @PutMapping("/comment") 
	   public @ResponseBody CommonRespDto<?> save(@RequestBody Comment comment){
		   System.out.println("comment: " + comment);
		   
		   int result = commentService.댓글달기(comment);
		   
		   if(result !=1) {
			   return new CommonRespDto<String>(0,"댓글작성 실패");
		   }
		   
		   return new CommonRespDto<String>(1,"댓글작성  성공");
	   }
	   
//	   @GetMapping("/comment/{boardId}")
//	   public String getComment(@PathVariable("boardId") int boardId, Model model) {
//		   
//		   List<Comment> comments = commentService.댓글가져오기(boardId); 
//	
//		   
//		   //model.addAttribute("comments", comments); 
//		   return "redirect:/board/" + boardId;
//	   }
	   
}
