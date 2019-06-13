package com.leanhtuan.imp;

import java.util.List;

import com.leanhtuan.entity.ChiTietSanPham;
import com.leanhtuan.entity.SanPham;

public interface ChiTietSanPhamImp {
	public List<SanPham> laySanPhams();
	public int laySoLuongSanPhamConHangCuaSize(int idSizeSP);
	public ChiTietSanPham layChiTietSanPhamTheoId(int idChiTietSP);
	public List<ChiTietSanPham> layListChiTietSanPhamTheoIdSanPham(int idSP);
	
	public List<SanPham> layTatCaSanPham();
	
	public int themChiTietSanPham(ChiTietSanPham ctsp);
	public int updateChiTietSanPham(int idct, int sl);
	public int deleteChiTietSanPham(int idct);
}
