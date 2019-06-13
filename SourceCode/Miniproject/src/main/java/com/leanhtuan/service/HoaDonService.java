package com.leanhtuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leanhtuan.dao.HoaDonDAO;
import com.leanhtuan.entity.HoaDon;
import com.leanhtuan.imp.HoaDonImp;

@Service
public class HoaDonService implements HoaDonImp {
	
	
	@Autowired
	HoaDonDAO hoadonDAO;

	public int themHoaDon(HoaDon hoadon) {
		return hoadonDAO.themHoaDon(hoadon);
	}

	public List<HoaDon> layListHoaDons() {
		return hoadonDAO.layListHoaDons();
	}

	public List<HoaDon> layListHoaDonTheoTinhTrang(String status) {
		return hoadonDAO.layListHoaDonTheoTinhTrang(status);
	}

	public HoaDon layHoaDonTheoID(int idhd) {
		return hoadonDAO.layHoaDonTheoID(idhd);
	}

	public void updateTinhTrangHoaDon(HoaDon hd) {
		hoadonDAO.updateTinhTrangHoaDon(hd);
	}
	
	
}
