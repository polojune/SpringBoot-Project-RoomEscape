package com.cos.roomescape.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.roomescape.dto.NoticeRespDto;
import com.cos.roomescape.model.Notice;
import com.cos.roomescape.service.NoticeService;

@Controller
public class NoticeController {
      
	 @Autowired
	 private NoticeService noticeService;
	
	 @GetMapping("/noticeSaveForm")
	 public String noticeSaveForm() {
		 return "noticeSaveForm";
	 }
	 
	 
	 
	@PostMapping("/noticeProc")
	 public String noticeProc(Notice notice) {
		 noticeService.글쓰기(notice);
		 return "redirect:/notices";
	 }
	
	 @GetMapping("/notices")
	 public String getBoards(Model model){
		 List<NoticeRespDto> notices = noticeService.목록보기();
		 model.addAttribute("noticeRespDtos",notices);
		
		 System.out.println("noticeRespDtos" + notices);
		 return "notice";
	 }
}
