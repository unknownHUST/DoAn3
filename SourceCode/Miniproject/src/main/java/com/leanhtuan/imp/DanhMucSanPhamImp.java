package com.leanhtuan.imp;

import java.util.List;

import com.leanhtuan.entity.DanhMucSanPham;

public interface DanhMucSanPhamImp {
	public List<DanhMucSanPham> layListDanhMucSanPhams();
	public DanhMucSanPham layDanhMucSanPhamTheoId(int idDM);
}
