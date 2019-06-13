package com.leanhtuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leanhtuan.dao.ChiTietHoaDonDAO;
import com.leanhtuan.entity.ChiTietHoaDon;
import com.leanhtuan.imp.ChiTietHoaDonImp;

@Service
public class ChiTietHoaDonService implements ChiTietHoaDonImp {
	
	@Autowired
	ChiTietHoaDonDAO cthdDAO;

	public boolean themChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		return cthdDAO.themChiTietHoaDon(chiTietHoaDon);
	}

	public List<ChiTietHoaDon> layListChiTietHoaDonTheoID(int idhoadon) {
		return cthdDAO.layListChiTietHoaDonTheoID(idhoadon);
	}

	public List<ChiTietHoaDon> layTatCaChiTietHoaDon() {
		return cthdDAO.layTatCaChiTietHoaDon();
	}
	
	
}
