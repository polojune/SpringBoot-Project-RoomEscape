package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.dto.NoticeRespDto;
import com.cos.roomescape.model.Notice;

public interface NoticeRepository {
    public void save(Notice notice);
    public List<NoticeRespDto> findAll();
    public NoticeRespDto findById(int id);
    public void delete(int id);
    public void update(Notice notice);
    public Notice findOne(int id);
}
