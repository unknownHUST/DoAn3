package com.leanhtuan.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="CHUCVU")
public class ChucVu {
	@Id
	private int idChucVu;
	private String tenChucVuString;
	
	
	public ChucVu(int idChucVu, String tenChucVuString) {
		super();
		this.idChucVu = idChucVu;
		this.tenChucVuString = tenChucVuString;
	}


	public int getIdChucVu() {
		return idChucVu;
	}


	public void setIdChucVu(int idChucVu) {
		this.idChucVu = idChucVu;
	}


	public String getTenChucVuString() {
		return tenChucVuString;
	}


	public void setTenChucVuString(String tenChucVuString) {
		this.tenChucVuString = tenChucVuString;
	}
	
	
}
