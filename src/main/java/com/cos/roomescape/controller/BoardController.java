package com.cos.roomescape.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;


import com.cos.roomescape.dto.BoardRespDto;
import com.cos.roomescape.dto.CommonRespDto;
import com.cos.roomescape.model.Board;
import com.cos.roomescape.repository.BoardRepository;
import com.cos.roomescape.service.BoardService;

@Controller
public class BoardController {
	 
	 @Autowired
	 private BoardService boardService;
	 
	 @Autowired
	 private BoardRepository boardRepository;
	 
	 @GetMapping("/freeSaveForm")
	 public String boardSaveForm() {
		 return "freeSaveForm";
	 }
	 
	 
	 
	@PostMapping("/boardProc")
	 public String boardProc(Board board) {
		 boardService.글쓰기(board);
		 return "redirect:/boards";
	 }
	
	 @GetMapping("/boards")
	 public String getBoards(Model model){
		 List<BoardRespDto> boards = boardService.목록보기();
		 model.addAttribute("boardRespDtos",boards);
		
		 //System.out.println("boardRespDtos" + boards);
		 return "board";
	 }
	 
	 @GetMapping("/boardDetail")
	 public String boardDetail() {
		 
		 return "boardDetail";
	 }
	 @GetMapping("/board/{id}")
	 public String getBoard(@PathVariable int id,Model model) {
		model.addAttribute("boardRespDto",boardService.상세보기(id));
		return "boardDetail";
	 }
	 
	 @GetMapping("/delete/{id}") 
	 public String deleteProc(@PathVariable("id") int id) {
		 
		  boardService.글삭제(id);
		  System.out.println("deleteProc:"+id);
		  return "redirect:/boards";
	 }
	 
	 @GetMapping("/board/update/{id}") 
	 public String edit(@PathVariable int id, Model model){
		 
		 Board board = boardService.글가져오기(id);
		// System.out.println(board.getContent());
		 
		 model.addAttribute("board", board);
		  return "boardUpdate";
	 }
	 
	 @PutMapping("/board/{id}") 
	 public @ResponseBody CommonRespDto<?> update(@RequestBody Board board){
		  
		    boardService.글수정(board);
		  return new CommonRespDto<String>(1,"글수정 성공");
	 }
	 
//	 @GetMapping("/board/edit/{id}") 
//	 public String update( Board board){
//		 Board board = boardService. 
//		 boardService.글수정(board);
//		  return new CommonRespDto<String>(1,"글수정 성공");
//	 }
	 
}
