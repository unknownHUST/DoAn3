package com.leanhtuan.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name="CHITIETSANPHAM")
public class ChiTietSanPham {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idChiTietSanPham;
	
	@OneToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="idSanPham")
	private SanPham sanPham;
	
	@OneToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="idSizeSanPham")
	private SizeSanPham sizeSanPham;
	
	
	private int soluong;
	
	

	public ChiTietSanPham() {
		super();
	}

	public ChiTietSanPham(int idChiTietSanPham, SanPham sanPham, SizeSanPham sizeSanPham, int soluong) {
		super();
		this.idChiTietSanPham = idChiTietSanPham;
		this.sanPham = sanPham;
		this.sizeSanPham = sizeSanPham;
		this.soluong = soluong;
	}

	public int getIdChiTietSanPham() {
		return idChiTietSanPham;
	}

	public void setIdChiTietSanPham(int idChiTietSanPham) {
		this.idChiTietSanPham = idChiTietSanPham;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public SizeSanPham getSizeSanPham() {
		return sizeSanPham;
	}

	public void setSizeSanPham(SizeSanPham sizeSanPham) {
		this.sizeSanPham = sizeSanPham;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
}
