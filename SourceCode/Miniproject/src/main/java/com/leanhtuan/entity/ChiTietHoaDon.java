package com.leanhtuan.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity(name="CHITIETHOADON")
public class ChiTietHoaDon {
	
	@EmbeddedId
	ChiTietHoaDonId chiTietHoaDonId;
	private int soluongmua;
	
	public ChiTietHoaDonId getChiTietHoaDonId() {
		return chiTietHoaDonId;
	}

	public void setChiTietHoaDonId(ChiTietHoaDonId chiTietHoaDonId) {
		this.chiTietHoaDonId = chiTietHoaDonId;
	}

	public int getSoluongmua() {
		return soluongmua;
	}

	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}

}
