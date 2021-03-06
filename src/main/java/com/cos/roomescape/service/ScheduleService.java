package com.cos.roomescape.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cos.roomescape.dto.ReserveThemeRespDto;
import com.cos.roomescape.dto.ReserveTimeRespDto;
import com.cos.roomescape.repository.ScheduleRepository;

@Service
public class ScheduleService {

	@Autowired
	private ScheduleRepository scheduleRepository;
	
	public List<ReserveTimeRespDto> 특정일시간표가져오기(int themeId, String datetime_string) {
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEE MMM dd yyyy",Locale.ENGLISH);
		LocalDate date = LocalDate.parse(datetime_string.substring(0, 15), formatter);
		System.out.println("LocalDate: " + date);
		
		List<ReserveTimeRespDto> scheduleList = scheduleRepository.findByThemeIdAndDate(themeId, date.toString());
		
		System.out.println("ScheduleService: scheduleList: " + scheduleList);
		
		return scheduleList;
	}
}
