package com.leanhtuan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="SIZESANPHAM")
public class SizeSanPham {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idSizeSanPham;
	private int tenSize;
	
	
	
	public SizeSanPham() {
		super();
	}


	public SizeSanPham(int idSizeSanPham, int tenSize) {
		super();
		this.idSizeSanPham = idSizeSanPham;
		this.tenSize = tenSize;
	}


	public int getIdSizeSanPham() {
		return idSizeSanPham;
	}


	public void setIdSizeSanPham(int idSizeSanPham) {
		this.idSizeSanPham = idSizeSanPham;
	}


	public int getTenSize() {
		return tenSize;
	}


	public void setTenSize(int tenSize) {
		this.tenSize = tenSize;
	}


}
