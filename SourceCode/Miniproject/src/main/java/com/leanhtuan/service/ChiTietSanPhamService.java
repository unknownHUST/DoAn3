package com.leanhtuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leanhtuan.dao.ChiTietSanPhamDAO;
import com.leanhtuan.entity.ChiTietSanPham;
import com.leanhtuan.entity.SanPham;
import com.leanhtuan.entity.SizeSanPham;
import com.leanhtuan.imp.ChiTietSanPhamImp;

@Service
public class ChiTietSanPhamService implements ChiTietSanPhamImp{
	
	@Autowired
	ChiTietSanPhamDAO ctspDAO;

	public List<SanPham> laySanPhams() {
		return ctspDAO.laySanPhams();
	}

	public int laySoLuongSanPhamConHangCuaSize(int idSizeSP) {
		return ctspDAO.laySoLuongSanPhamConHangCuaSize(idSizeSP);
	}

	public ChiTietSanPham layChiTietSanPhamTheoId(int idChiTietSP) {
		return ctspDAO.layChiTietSanPhamTheoId(idChiTietSP);
	}

	public List<ChiTietSanPham> layListChiTietSanPhamTheoIdSanPham(int idSP) {
		return ctspDAO.layListChiTietSanPhamTheoIdSanPham(idSP);
	}

	public List<SanPham> layTatCaSanPham() {
		return ctspDAO.layTatCaSanPham();
	}

	public int themChiTietSanPham(ChiTietSanPham ctsp) {
		return ctspDAO.themChiTietSanPham(ctsp);
	}

	public int updateChiTietSanPham(int idct, int sl) {
		return ctspDAO.updateChiTietSanPham(idct, sl);
	}

	public int deleteChiTietSanPham(int idct) {
		return ctspDAO.deleteChiTietSanPham(idct);
	}
	
}
