package com.cos.roomescape.repository;

import java.util.List;

public interface ScheduleRepository {
	public List<String> findByThemeIdAndDate(int themeId, String dateStr);
}
