package com.cos.roomescape.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.roomescape.dto.StoreDetailRespDto;
import com.cos.roomescape.model.Store;
import com.cos.roomescape.repository.StoreRepository;
import com.cos.roomescape.repository.ThemeRepository;

//Controller,Repository, Configuration,Service,Component
//RestController,Bean

@Service // IOC
public class StoreService {
	@Autowired
	private StoreRepository storeRepository; // DI

	@Transactional(readOnly = true)
	public List<Store> 가게보기() {
        
	  return storeRepository.findAll();
	  

	}
	@Transactional(readOnly = true)
	public StoreDetailRespDto 상세보기(int id) {
		StoreDetailRespDto dto = new StoreDetailRespDto();
		Store store = storeRepository.findById(id);
//		List<Theme> themes = ThemeRepository.findByStoreId(storeId);
//		
//		dto.setStore(store);
//		dto.setThemes(themes);
		
		
		return dto;
	}
	
	
}