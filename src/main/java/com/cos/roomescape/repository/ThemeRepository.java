package com.cos.roomescape.repository;

import java.util.List;


import com.cos.roomescape.model.Theme;

public interface ThemeRepository {
	public List<Theme> findAll();
	public List<Theme> findByStoreId(int storeId);
}
