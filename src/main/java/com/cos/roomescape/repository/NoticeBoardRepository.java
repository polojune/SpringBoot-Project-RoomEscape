package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.model.FreeBoard;
import com.cos.roomescape.model.NoticeBoard;

public interface NoticeBoardRepository {
    public void save(NoticeBoard board);
    public List<NoticeBoard> findAll();
  
    public void delete(int id);
    public void update(NoticeBoard board);
    public NoticeBoard findOne(int id);
}
