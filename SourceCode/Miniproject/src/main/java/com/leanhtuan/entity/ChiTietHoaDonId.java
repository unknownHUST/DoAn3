package com.leanhtuan.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class ChiTietHoaDonId implements Serializable {
	
	@Column(name = "idHoaDon")
	public int idHoaDon;
	@Column(name = "idChiTietSanPham")
	public int idChiTietSanPham;
	



	public int getIdHoaDon() {
		return idHoaDon;
	}


	public void setIdHoaDon(int idHoaDon) {
		this.idHoaDon = idHoaDon;
	}


	public int getIdChiTietSanPham() {
		return idChiTietSanPham;
	}


	public void setIdChiTietSanPham(int idChiTietSanPham) {
		this.idChiTietSanPham = idChiTietSanPham;
	}

}
