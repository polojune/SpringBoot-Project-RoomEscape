package com.cos.roomescape.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.cos.roomescape.dto.BoardRespDto;
import com.cos.roomescape.dto.NoticeRespDto;
import com.cos.roomescape.model.Board;
import com.cos.roomescape.model.Notice;
import com.cos.roomescape.repository.BoardRepository;
import com.cos.roomescape.repository.NoticeRepository;

@Service
public class NoticeService {
     
	  @Autowired
	  private NoticeRepository noticeRepository; 
	  
	  @Transactional 
	  public void 글쓰기(Notice notice) {
		  noticeRepository.save(notice);
	  }
	  
		@Transactional(readOnly = true)
		public List<NoticeRespDto> 목록보기() {
	        
		  return noticeRepository.findAll();

		}
		
		@Transactional(readOnly = true)
		public NoticeRespDto 상세보기(int id) {
	        
		  return noticeRepository.findById(id);

		}
	
}
