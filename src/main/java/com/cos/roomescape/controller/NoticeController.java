package com.cos.roomescape.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.roomescape.dto.BoardRespDto;
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
	 
	 @GetMapping("/noticeDetail")
	 public String notice() {
		 return "noticeDetail";
	 }
	 
	 @GetMapping("/notice/{id}")
	 public String getBoard(@PathVariable int id,Model model) {
		 
		 NoticeRespDto noticeRespDto = noticeService.상세보기(id);
		 
		 System.out.println(noticeRespDto.getId());
		 
		model.addAttribute("noticeRespDto",noticeService.상세보기(id));
		return "noticeDetail";
	 }
	 
	 @GetMapping("/notice/delete/{id}") 
	 public String deleteProc(@PathVariable("id") int id) {
		 
		  noticeService.글삭제(id);
		  System.out.println("deleteProc:"+id);
		  return "redirect:/notices";
	 }
}
