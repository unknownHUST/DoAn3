package com.leanhtuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leanhtuan.dao.SizeSanPhamDAO;
import com.leanhtuan.entity.SizeSanPham;
import com.leanhtuan.imp.SizeSanPhamImp;

@Service
public class SizeSanPhamService implements SizeSanPhamImp {

	
	@Autowired
	SizeSanPhamDAO sizespDAO;

	public List<SizeSanPham> layTatCaSizeSanPham() {
		return sizespDAO.layTatCaSizeSanPham();
	}

	public SizeSanPham laySizeSanPhamTheoId(int idsize) {
		return sizespDAO.laySizeSanPhamTheoId(idsize);
	}
}
