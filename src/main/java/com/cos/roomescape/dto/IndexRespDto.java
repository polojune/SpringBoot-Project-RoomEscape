package com.cos.roomescape.dto;

import java.util.List;

import com.cos.roomescape.model.Store;
import com.cos.roomescape.model.Theme;

import lombok.Data;

@Data
public class IndexRespDto {
	private List<Store> stores;
	private List<Theme> themes;
}
