package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.dto.BoardRespDto;
import com.cos.roomescape.model.Board;

public interface BoardRepository {
    public void save(Board board);
    public List<BoardRespDto> findAll();
    public BoardRespDto findById(int id);
    public void delete(int id);
    public int update(Board board);
    public Board findOne(int id);
}
