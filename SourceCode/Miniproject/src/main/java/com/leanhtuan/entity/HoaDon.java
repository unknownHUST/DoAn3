package com.leanhtuan.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="HOADON")
public class HoaDon {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idHoaDon;
	private String tenKhachHang;
	private String sdtKhachHang;
	private String diachigiaohang;
	private String tinhtrang;
	private Date timeOrder;
	private String hinhthucthanhtoan;
	
	
	@OneToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="idHoaDon")
	private Set<ChiTietHoaDon> listChiTietHoaDons;


	public int getIdHoaDon() {
		return idHoaDon;
	}


	public void setIdHoaDon(int idHoaDon) {
		this.idHoaDon = idHoaDon;
	}


	public String getTenKhachHang() {
		return tenKhachHang;
	}


	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}


	public String getSdtKhachHang() {
		return sdtKhachHang;
	}


	public void setSdtKhachHang(String sdtKhachHang) {
		this.sdtKhachHang = sdtKhachHang;
	}


	public String getDiachigiaohang() {
		return diachigiaohang;
	}


	public void setDiachigiaohang(String diachigiaohang) {
		this.diachigiaohang = diachigiaohang;
	}


	public String getTinhtrang() {
		return tinhtrang;
	}


	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}


	public Date getTimeOrder() {
		return timeOrder;
	}


	public void setTimeOrder(Date timeOrder) {
		this.timeOrder = timeOrder;
	}


	public String getHinhthucthanhtoan() {
		return hinhthucthanhtoan;
	}


	public void setHinhthucthanhtoan(String hinhthucthanhtoan) {
		this.hinhthucthanhtoan = hinhthucthanhtoan;
	}


	public Set<ChiTietHoaDon> getListChiTietHoaDons() {
		return listChiTietHoaDons;
	}


	public void setListChiTietHoaDons(Set<ChiTietHoaDon> listChiTietHoaDons) {
		this.listChiTietHoaDons = listChiTietHoaDons;
	}
}
