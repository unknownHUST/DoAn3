package com.leanhtuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leanhtuan.dao.SanPhamDAO;
import com.leanhtuan.entity.SanPham;
import com.leanhtuan.imp.SanPhamImp;


@Service
public class SanPhamService implements SanPhamImp {
	
	@Autowired
	SanPhamDAO sanphamDAO;
	
	
	
	
	

	public List<SanPham> layTatCaSanPham() {
		return sanphamDAO.layTatCaSanPham();
	}

	public List<SanPham> layTatCaSanPhamNam() {
		return sanphamDAO.layTatCaSanPhamNam();
	}

	public List<SanPham> layTatCaSanPhamNu() {
		return sanphamDAO.layTatCaSanPhamNu();
	}

	public List<SanPham> layTatCaSanPhamTheoTrang(int vitridautrang) {
		return sanphamDAO.layTatCaSanPhamTheoTrang(vitridautrang);
	}

	public List<SanPham> layTatCaSanPhamNamTheoTrang(int vitridautrang) {
		return sanphamDAO.layTatCaSanPhamNamTheoTrang(vitridautrang);
	}

	public List<SanPham> layTatCaSanPhamNuTheoTrang(int vitridautrang) {
		return sanphamDAO.layTatCaSanPhamNuTheoTrang(vitridautrang);
	}

	public SanPham laySanPhamTheoID(int idSanPham) {
		return sanphamDAO.laySanPhamTheoID(idSanPham);
	}

	public List<SanPham> layListSanPhamTheoGioiTinhVaDanhMuc(int idDanhMuc, List<String> gioitinh) {
		return sanphamDAO.layListSanPhamTheoGioiTinhVaDanhMuc(idDanhMuc, gioitinh);
	}

	public List<SanPham> layListSanPhamTheoGioiTinhVaDanhMuc(List<String> gioitinh) {
		return sanphamDAO.layListSanPhamTheoGioiTinhVaDanhMuc(gioitinh);
	}

	public List<SanPham> searchSanPhamTheoTen(String name, int vitridautrang) {
		return sanphamDAO.searchSanPhamTheoTen(name, vitridautrang);
	}

	public int themSanPham(SanPham sanPham) {
		return sanphamDAO.themSanPham(sanPham);
	}

	public int updateSanPham(int idsp, int idDanhMucSanPham, String tenSanPham, float giatien, String gioitinh,
			String motaSP) {
		return sanphamDAO.updateSanPham(idsp, idDanhMucSanPham, tenSanPham, giatien, gioitinh, motaSP);
	}

	public int deleteSanPham(int idsp) {
		return sanphamDAO.deleteSanPham(idsp);
	}

}
