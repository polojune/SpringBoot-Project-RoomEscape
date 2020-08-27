package com.cos.roomescape.service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.roomescape.dto.ReviewRespDto;
import com.cos.roomescape.dto.StoreDetailRespDto;
import com.cos.roomescape.dto.ThemeRespDto;
import com.cos.roomescape.model.Store;
import com.cos.roomescape.model.Theme;
import com.cos.roomescape.repository.ReviewRepository;
import com.cos.roomescape.repository.StoreRepository;
import com.cos.roomescape.repository.ThemeRepository;
import com.cos.roomescape.util.IpUtil;

//Controller,Repository, Configuration,Service,Component
//RestController,Bean

@Service // IOC
public class StoreService {
	@Autowired
	private StoreRepository storeRepository; // DI
	@Autowired
	private ThemeRepository themeRepository;

	@Autowired
	private ReviewRepository reviewRepository;
	

	@Transactional(readOnly = true)
	public List<Store> 가게보기() {
        List<Store> stores = storeRepository.findAll();
        
        
	    for (Store store : stores) {
	    	// System.out.println(store.getStoreImg());
	    	String oldPath = store.getStoreImg();
	    	if (oldPath.startsWith("http://")) continue;
	    	String newPath = IpUtil.convertAddress(oldPath);
	    	store.setStoreImg(newPath);
	    }
	    
	    return stores;
	}
	
	
	@Transactional(readOnly = true)
	public StoreDetailRespDto 상세보기(int storeId ) {
		StoreDetailRespDto dto = new StoreDetailRespDto();
		Store store = storeRepository.findById(storeId);
		List<ThemeRespDto> themes =themeRepository.findByStoreId(storeId);
		
		for (ThemeRespDto themeRespDto : themes) {
			String oldPath = themeRespDto.getThemeImg();
	    	if (oldPath.startsWith("http://")) continue;
	    	String newPath = IpUtil.convertAddress(oldPath);
	    	themeRespDto.setThemeImg(newPath);
		}
		
		List<ReviewRespDto> reviewDto = reviewRepository.findByStoreId(storeId);
		
		dto.setStore(store);
		dto.setThemes(themes);
		dto.setReviews(reviewDto);
		
		return dto;
	}
	
	
}