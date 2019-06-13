package com.leanhtuan.imp;

import java.util.List;

import com.leanhtuan.entity.SanPham;

public interface SanPhamImp {
	public List<SanPham> layTatCaSanPham();
	public List<SanPham> layTatCaSanPhamNam();
	public List<SanPham> layTatCaSanPhamNu();
	public List<SanPham> layTatCaSanPhamTheoTrang(int vitridautrang);
	public List<SanPham> layTatCaSanPhamNamTheoTrang(int vitridautrang);
	public List<SanPham> layTatCaSanPhamNuTheoTrang(int vitridautrang);

	
	public SanPham laySanPhamTheoID(int idSanPham);
	
	public List<SanPham> layListSanPhamTheoGioiTinhVaDanhMuc(int idDanhMuc, List<String> gioitinh);
	public List<SanPham> layListSanPhamTheoGioiTinhVaDanhMuc(List<String> gioitinh);
	
	public List<SanPham> searchSanPhamTheoTen(String name, int vitridautrang);
	
	public int themSanPham(SanPham sanPham);
	
	public int updateSanPham(int idsp, int idDanhMucSanPham, String tenSanPham, float giatien, String gioitinh, String motaSP);
	
	public int deleteSanPham(int idsp);
}
