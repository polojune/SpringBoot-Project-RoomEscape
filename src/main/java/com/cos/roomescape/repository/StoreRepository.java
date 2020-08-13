package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.dto.StoreDetailRespDto;
import com.cos.roomescape.model.Store;

public interface StoreRepository {
	 public List<Store> findAll();
	 public Store findById(int storeId);
}
