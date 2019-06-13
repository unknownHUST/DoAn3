package com.leanhtuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leanhtuan.dao.DanhMucSanPhamDAO;
import com.leanhtuan.entity.DanhMucSanPham;
import com.leanhtuan.imp.DanhMucSanPhamImp;

@Service
public class DanhMucSanPhamService implements DanhMucSanPhamImp {
	
	@Autowired
	DanhMucSanPhamDAO dmspDAO;

	public List<DanhMucSanPham> layListDanhMucSanPhams() {
		return dmspDAO.layListDanhMucSanPhams();
	}

	public DanhMucSanPham layDanhMucSanPhamTheoId(int idDM) {
		return dmspDAO.layDanhMucSanPhamTheoId(idDM);
	}
	
	
}
