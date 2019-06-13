package com.leanhtuan.imp;

import java.util.List;

import com.leanhtuan.entity.HoaDon;

public interface HoaDonImp {
	public int themHoaDon(HoaDon hoadon); 
	
	public List<HoaDon> layListHoaDons();
	public List<HoaDon> layListHoaDonTheoTinhTrang(String status);
	
	public HoaDon layHoaDonTheoID(int idhd);
	
	public void updateTinhTrangHoaDon(HoaDon hd);
}
