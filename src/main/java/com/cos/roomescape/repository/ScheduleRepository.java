package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.dto.ReserveThemeRespDto;
import com.cos.roomescape.dto.ReserveTimeRespDto;

public interface ScheduleRepository {
	public List<ReserveTimeRespDto> findByThemeIdAndDate(int themeId, String dateStr);
}
