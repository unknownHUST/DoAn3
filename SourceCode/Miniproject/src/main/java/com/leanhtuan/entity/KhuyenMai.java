package com.leanhtuan.entity;

import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity(name="KHUYENMAI")
public class KhuyenMai {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idKhuyenMai;
	
	private String tenKhuyenMai;
	private Timestamp timeBatDau;
	private Timestamp timeKetThuc;
	private String motaKhuyenMai;
	private String imageKhuyenMai;
	private int giamtheophantram;
	private float giamgiacuthe;
	
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="CHITIETKHUYENMAI",
	joinColumns= {@JoinColumn(name="idKhuyenMai", referencedColumnName="idKhuyenMai")},
	inverseJoinColumns= {@JoinColumn(name="idSanPham",referencedColumnName="idSanPham")}
	)
	private Set<SanPham> listSanPhams;
	
	public KhuyenMai(int idKhuyenMai, String tenKhuyenMai, Timestamp timeBatDau, Timestamp timeKetThuc,
			String motaKhuyenMai, String imageKhuyenMai, int giamtheophantram, float giamgiacuthe) {
		super();
		this.idKhuyenMai = idKhuyenMai;
		this.tenKhuyenMai = tenKhuyenMai;
		this.timeBatDau = timeBatDau;
		this.timeKetThuc = timeKetThuc;
		this.motaKhuyenMai = motaKhuyenMai;
		this.imageKhuyenMai = imageKhuyenMai;
		this.giamtheophantram = giamtheophantram;
		this.giamgiacuthe = giamgiacuthe;
	}


	public Set<SanPham> getListSanPhams() {
		return listSanPhams;
	}


	public void setListSanPhams(Set<SanPham> listSanPhams) {
		this.listSanPhams = listSanPhams;
	}


	public int getIdKhuyenMai() {
		return idKhuyenMai;
	}


	public void setIdKhuyenMai(int idKhuyenMai) {
		this.idKhuyenMai = idKhuyenMai;
	}


	public String getTenKhuyenMai() {
		return tenKhuyenMai;
	}


	public void setTenKhuyenMai(String tenKhuyenMai) {
		this.tenKhuyenMai = tenKhuyenMai;
	}


	public Timestamp getTimeBatDau() {
		return timeBatDau;
	}


	public void setTimeBatDau(Timestamp timeBatDau) {
		this.timeBatDau = timeBatDau;
	}


	public Timestamp getTimeKetThuc() {
		return timeKetThuc;
	}


	public void setTimeKetThuc(Timestamp timeKetThuc) {
		this.timeKetThuc = timeKetThuc;
	}


	public String getMotaKhuyenMai() {
		return motaKhuyenMai;
	}


	public void setMotaKhuyenMai(String motaKhuyenMai) {
		this.motaKhuyenMai = motaKhuyenMai;
	}


	public String getImageKhuyenMai() {
		return imageKhuyenMai;
	}


	public void setImageKhuyenMai(String imageKhuyenMai) {
		this.imageKhuyenMai = imageKhuyenMai;
	}


	public int getGiamtheophantram() {
		return giamtheophantram;
	}


	public void setGiamtheophantram(int giamtheophantram) {
		this.giamtheophantram = giamtheophantram;
	}


	public float getGiamgiacuthe() {
		return giamgiacuthe;
	}


	public void setGiamgiacuthe(float giamgiacuthe) {
		this.giamgiacuthe = giamgiacuthe;
	}
	
}
