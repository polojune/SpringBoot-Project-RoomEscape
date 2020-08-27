package com.cos.roomescape.util;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class IpUtil {
	
	private static String ip = "";
	
	static {
		try {
			ip = InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
	}

	public static String convertAddress(String oldPath) {
	
//		System.out.println("ip주소: " + ip);	// 192.168.0.xx 와 같은 ip주소로 변환함. 안드로이드 picasso 라이브러리가
											// localhost의 이미지를 못 가져오고 ip주소로만 가져올 수
		
		String dongminIp = "222.234.36.82:58004";
		
		// String basePath = "http://localhost:8080";
		// String basePath = "http://" + ip + ":8080";
		
		String basePath = "http://" + dongminIp;
		String newPath = basePath + oldPath;

		return newPath;
	}
}
