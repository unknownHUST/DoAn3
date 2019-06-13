package com.leanhtuan.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name="SANPHAM")
public class SanPham {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idSanPham;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="idDanhMucSanPham")
	private DanhMucSanPham danhMucSanPham;
	
	private String tenSanPham;
	private float giatien;
	private String gioitinh;
	private String motaSP;
	private String imageSanPham;
	
	@OneToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="idSanPham")
	private Set<ChiTietSanPham> listChiTietSanPhams;
	
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="CHITIETKHUYENMAI",
	joinColumns= {@JoinColumn(name="idSanPham", referencedColumnName="idSanPham")},
	inverseJoinColumns= {@JoinColumn(name="idKhuyenMai",referencedColumnName="idKhuyenMai")}
	)
	private Set<KhuyenMai> listKhuyenMais;
	
	
	public SanPham(int idSanPham, DanhMucSanPham danhMucSanPham, String tenSanPham, float giatien, String gioitinh,
			String motaSP, String imageSanPham) {
		super();
		this.idSanPham = idSanPham;
		this.danhMucSanPham = danhMucSanPham;
		this.tenSanPham = tenSanPham;
		this.giatien = giatien;
		this.gioitinh = gioitinh;
		this.motaSP = motaSP;
		this.imageSanPham = imageSanPham;
	}
	
	

	public SanPham() {
		super();
	}



	public Set<KhuyenMai> getListKhuyenMais() {
		return listKhuyenMais;
	}



	public void setListKhuyenMais(Set<KhuyenMai> listKhuyenMais) {
		this.listKhuyenMais = listKhuyenMais;
	}



	public Set<ChiTietSanPham> getListChiTietSanPhams() {
		return listChiTietSanPhams;
	}
	
	
	public void setListChiTietSanPhams(Set<ChiTietSanPham> listChiTietSanPhams) {
		this.listChiTietSanPhams = listChiTietSanPhams;
	}


	public int getIdSanPham() {
		return idSanPham;
	}


	public void setIdSanPham(int idSanPham) {
		this.idSanPham = idSanPham;
	}


	public DanhMucSanPham getDanhMucSanPham() {
		return danhMucSanPham;
	}


	public void setDanhMucSanPham(DanhMucSanPham danhMucSanPham) {
		this.danhMucSanPham = danhMucSanPham;
	}


	public String getTenSanPham() {
		return tenSanPham;
	}


	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}


	public float getGiatien() {
		return giatien;
	}


	public void setGiatien(float giatien) {
		this.giatien = giatien;
	}


	public String getGioitinh() {
		return gioitinh;
	}


	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}


	public String getMotaSP() {
		return motaSP;
	}


	public void setMotaSP(String motaSP) {
		this.motaSP = motaSP;
	}


	public String getImageSanPham() {
		return imageSanPham;
	}


	public void setImageSanPham(String imageSanPham) {
		this.imageSanPham = imageSanPham;
	}
	
	
	
}
