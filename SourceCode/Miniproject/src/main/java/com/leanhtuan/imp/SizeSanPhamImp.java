package com.leanhtuan.imp;

import java.util.List;

import com.leanhtuan.entity.SizeSanPham;

public interface SizeSanPhamImp {
	public List<SizeSanPham> layTatCaSizeSanPham();
	
	public SizeSanPham laySizeSanPhamTheoId(int idsize);
}
