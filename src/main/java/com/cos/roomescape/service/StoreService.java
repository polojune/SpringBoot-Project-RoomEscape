package com.cos.roomescape.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.roomescape.model.Store;
import com.cos.roomescape.repository.StoreRepository;

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
	

}