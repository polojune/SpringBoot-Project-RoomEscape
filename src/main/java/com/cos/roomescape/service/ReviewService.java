package com.cos.roomescape.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.roomescape.model.Comment;
import com.cos.roomescape.model.Review;
import com.cos.roomescape.repository.CommentRepository;
import com.cos.roomescape.repository.ReviewRepository;

@Service
public class ReviewService {
      
	@Autowired
	private ReviewRepository reviewRepository;
	
	
	@Transactional
	public int 댓글달기(Review review) {
        
		return reviewRepository.save(review);
         
	}
	
//	@Transactional 
//	public List<Comment> 댓글가져오기(int boardId) {
//		 
//		 return commentRepository.findById(boardId);
//	}
	
}
