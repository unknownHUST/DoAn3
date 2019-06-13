package com.leanhtuan.entity;

import java.util.HashMap;
import java.util.Map;

public class Cart {
	private HashMap<Integer, ItemCart> itemCart;

	public Cart() {
		super();
	}

	public Cart(HashMap<Integer, ItemCart> itemCart) {
		super();
		this.itemCart = itemCart;
	}

	public HashMap<Integer, ItemCart> getItemCart() {
		return itemCart;
	}

	public void setItemCart(HashMap<Integer, ItemCart> itemCart) {
		this.itemCart = itemCart;
	}

	
	
	//--------------Cac phuong thuc thao tac voi cart--------------
	
	//Them item vao cart:
	public void themItemVaoCart(int key) {
		boolean check = itemCart.containsKey(key);
		if(check) {											//neu da ton tai trong cart thi soluongmua++ 
			int quantity_old = itemCart.get(key).getSoluongmua();
			itemCart.get(key).setSoluongmua(quantity_old + 1);
		}
	}
	
	//Xoa item trong cart:
	public void xoaItemTrongCart(int key) {
		boolean check = itemCart.containsKey(key);
		if(check) {
			int quantity_old = itemCart.get(key).getSoluongmua();
			if(quantity_old <= 1) {
				itemCart.remove(key);
			} else {
				itemCart.get(key).setSoluongmua(quantity_old - 1);
			}
		}
	}
	
	//Xoa 1 item khoi cart;
	public void removeItem(int key) {
		boolean check = itemCart.containsKey(key);
		if (check) {
			itemCart.remove(key);
		}
	}
	
	//Tinh tong tien gio hang:
	public double totalCart() {
		double count = 0;
        
        //count = price * quantity;
        for(Map.Entry<Integer, ItemCart> list : itemCart.entrySet()){
            count += list.getValue().getChiTietSanPham().getSanPham().getGiatien() * list.getValue().getSoluongmua();
        }
        return count;
	}

}
