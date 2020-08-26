package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.dto.CommentRespDto;
import com.cos.roomescape.model.Comment;

public interface CommentRepository {
	   public int save(Comment comment);
	   public List<CommentRespDto> findByBoardId(int boardId);
}
