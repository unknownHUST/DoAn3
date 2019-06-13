package com.leanhtuan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="DANHMUCSANPHAM")
public class DanhMucSanPham {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idDanhMucSanPham;
	private String tenDanhMuc;
	
	
	

	public DanhMucSanPham() {
		super();
	}

	public DanhMucSanPham(int idDanhMucSanPham, String tenDanhMuc) {
		super();
		this.idDanhMucSanPham = idDanhMucSanPham;
		this.tenDanhMuc = tenDanhMuc;
	}

	public int getIdDanhMucSanPham() {
		return idDanhMucSanPham;
	}

	public void setIdDanhMucSanPham(int idDanhMucSanPham) {
		this.idDanhMucSanPham = idDanhMucSanPham;
	}

	public String getTenDanhMuc() {
		return tenDanhMuc;
	}

	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}
	
	
}
