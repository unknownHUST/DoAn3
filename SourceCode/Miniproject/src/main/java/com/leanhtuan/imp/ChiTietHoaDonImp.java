package com.leanhtuan.imp;

import java.util.List;

import com.leanhtuan.entity.ChiTietHoaDon;

public interface ChiTietHoaDonImp {
	public boolean themChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
	
	public List<ChiTietHoaDon> layListChiTietHoaDonTheoID(int idhoadon);
	
	public List<ChiTietHoaDon> layTatCaChiTietHoaDon();
}
