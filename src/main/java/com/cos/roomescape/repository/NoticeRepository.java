package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.model.Board;
import com.cos.roomescape.model.Notice;

public interface NoticeRepository {
    public void save(Notice board);
    public List<Notice> findAll();
  
    public void delete(int id);
    public void update(Notice board);
    public Notice findOne(int id);
}
