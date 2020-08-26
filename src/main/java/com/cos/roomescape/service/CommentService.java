package com.cos.roomescape.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.roomescape.model.Comment;
import com.cos.roomescape.repository.CommentRepository;

@Service
public class CommentService {
      
	@Autowired
	private CommentRepository commentRepository;
	
	
	@Transactional
	public int 댓글달기(Comment comment) {
        
		return commentRepository.save(comment);
         
	}
	
//	@Transactional 
//	public List<Comment> 댓글가져오기(int boardId) {
//		 
//		 return commentRepository.findById(boardId);
//	}
	
}
