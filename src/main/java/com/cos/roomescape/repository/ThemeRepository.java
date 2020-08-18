package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.dto.ReserveThemeRespDto;
import com.cos.roomescape.dto.ThemeRespDto;
import com.cos.roomescape.model.Theme;

public interface ThemeRepository {
	public List<Theme> findAll();
	public List<ThemeRespDto> findByStoreId(int storeId);
	public List<ReserveThemeRespDto> findThemeByStoreId(int storeId);
	public Theme findById(int themeId);
}
