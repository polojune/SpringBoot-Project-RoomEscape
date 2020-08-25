package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.dto.ReserveThemeRespDto;

public interface ScheduleRepository {
	public List<ReserveThemeRespDto> findByThemeIdAndDate(int themeId, String dateStr);
}
