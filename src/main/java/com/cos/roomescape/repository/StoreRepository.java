package com.cos.roomescape.repository;

import java.util.List;

import com.cos.roomescape.dto.ReserveStoreRespDto;
import com.cos.roomescape.model.Store;

public interface StoreRepository {
    public List<Store> findAll();
    public Store findById(int storeId);
    public String findByStoreId(int storeId);
    public List<ReserveStoreRespDto> findByLocation(String location);
    public List<ReserveStoreRespDto> findByAllLocation();
}
