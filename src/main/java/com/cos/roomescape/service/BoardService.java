package com.cos.roomescape.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.cos.roomescape.dto.BoardRespDto;
import com.cos.roomescape.model.Board;
import com.cos.roomescape.repository.BoardRepository;

@Service
public class BoardService {
     
	  @Autowired
	  private BoardRepository boardRepository; 
	  
	  @Transactional 
	  public void 글쓰기(Board board) {
		     boardRepository.save(board);
	  }
	  
		@Transactional(readOnly = true)
		public List<BoardRespDto> 목록보기() {
	        
		  return boardRepository.findAll();

		}
		
		@Transactional(readOnly = true)
		public BoardRespDto 상세보기(int id) {
	        
		  return boardRepository.findById(id);

		}
		
		
		@Transactional
		public void 글삭제(int id) {
	        
			boardRepository.delete(id);
	         
		}
		
		@Transactional
		public Board 글가져오기(int id) {
			
			return boardRepository.findOne(id);
		}
		@Transactional
		public int 글수정(Board board) {
	        
			return boardRepository.update(board);
	         
		}
		
	
}
