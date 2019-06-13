package com.leanhtuan.entity;

public class ItemCart {
	private ChiTietSanPham chiTietSanPham;
	private int soluongmua;
	
	
	public ItemCart() {
		super();
	}
	
	
	public ItemCart(ChiTietSanPham chiTietSanPham, int soluongmua) {
		super();
		this.chiTietSanPham = chiTietSanPham;
		this.soluongmua = soluongmua;
	}
	
	
	public ChiTietSanPham getChiTietSanPham() {
		return chiTietSanPham;
	}
	
	public void setChiTietSanPham(ChiTietSanPham chiTietSanPham) {
		this.chiTietSanPham = chiTietSanPham;
	}
	
	public int getSoluongmua() {
		return soluongmua;
	}
	
	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}
	
}
