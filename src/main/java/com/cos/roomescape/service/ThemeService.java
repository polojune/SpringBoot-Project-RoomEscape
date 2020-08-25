package com.cos.roomescape.service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.roomescape.dto.ReviewRespDto;
import com.cos.roomescape.dto.StoreNameDto;
import com.cos.roomescape.dto.ThemeDetailRespDto;
import com.cos.roomescape.dto.ThemeRespDto;
import com.cos.roomescape.model.Store;
import com.cos.roomescape.model.Theme;
import com.cos.roomescape.model.User;
import com.cos.roomescape.repository.ReviewRepository;
import com.cos.roomescape.repository.StoreRepository;
import com.cos.roomescape.repository.ThemeRepository;
import com.cos.roomescape.repository.UserRepository;

//Controller,Repository, Configuration,Service,Component
//RestController,Bean

@Service // IOC
public class ThemeService {
	@Autowired
	private ThemeRepository themeRepository; // DI
    @Autowired
    private ReviewRepository reviewRepository;
	@Autowired
	private StoreRepository storeRepository;
    
	@Transactional(readOnly = true)
	public List<Theme> 테마보기() {
        
		List<Theme> themes = themeRepository.findAll();
		
		String ip = "";
		try {
			ip = InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		System.out.println("ip주소: " + ip);
		
		// String basePath = "http://localhost:8080";
		String basePath = "http://" + ip + ":8080";	// 192.168.0.xx 와 같은 ip주소로 변환함. 안드로이드 picasso 라이브러리가
													// localhost의 이미지를 못 가져오고 ip주소로만 가져올 수
	    for (Theme theme : themes) {
	    	// System.out.println(theme.getThemeImg());
	    	String oldPath = theme.getThemeImg();
	    	String newPath = basePath + oldPath;
	    	theme.setThemeImg(newPath);
	    }
	  
	    return themes;
	}
   
	@Transactional(readOnly = true)
	public ThemeDetailRespDto 상세보기(int themeId) {
		 ThemeDetailRespDto themeDto = new ThemeDetailRespDto();
		 Theme theme = themeRepository.findById(themeId); 
		 
	     String storeName = storeRepository.findByStoreId(theme.getStoreId());	 
		 System.out.println("storeName" +storeName);
	     //StoreNameDto storeDto = storeRepository.findByStoreId(theme.getStoreId());	 
		 List<ThemeRespDto> themes = themeRepository.findByStoreId(theme.getStoreId());
		 List<ReviewRespDto> reviewDto = reviewRepository.findByThemeId(themeId);
		 
		 
		 themeDto.setTheme(theme);
		 themeDto.setStoreName(storeName);
		 themeDto.setThemes(themes);
		 themeDto.setReviews(reviewDto);
		 
		 return themeDto;
	}
}