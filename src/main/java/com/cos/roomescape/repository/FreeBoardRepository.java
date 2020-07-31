package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.model.FreeBoard;

public interface FreeBoardRepository {
    public void save(FreeBoard board);
    public List<FreeBoard> findAll();
  
    public void delete(int id);
    public void update(FreeBoard board);
    public FreeBoard findOne(int id);
}
