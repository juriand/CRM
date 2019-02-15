package com.crm.util;

public class ConstantsUtil {	
	public static String getOpporStatus(String n) {
		String s = null;
		switch(n){
		case "0":
			s = "未分配";
			break;
		case "1":
			s = "已指派";
			break;
		case "2":
			s = "已执行";
			break;
		case "3":
			s = "开发成功";
			break;
		case "4":
			s = "开发失败";
			break;
		default:
			s = ""+n;
		}
		return s;
	}

}
