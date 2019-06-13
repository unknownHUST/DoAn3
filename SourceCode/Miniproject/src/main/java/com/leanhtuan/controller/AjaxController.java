package com.leanhtuan.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.leanhtuan.entity.Cart;
import com.leanhtuan.entity.ChiTietSanPham;
import com.leanhtuan.entity.HoaDon;
import com.leanhtuan.entity.ItemCart;
import com.leanhtuan.service.ChiTietSanPhamService;
import com.leanhtuan.service.HoaDonService;

@Controller
@RequestMapping("api")
@SessionAttributes({"cart","slCart"})
public class AjaxController {
	
	@Autowired
	ChiTietSanPhamService ctspService;
	@Autowired
	HoaDonService hdService;
	
	
	@GetMapping("/addtocart")
	@ResponseBody
	public void ThemItemVaoCart(@RequestParam String idchitietsp,@RequestParam String soluongmua,HttpSession httpSession) {
		Cart cart = new Cart();
		HashMap<Integer, ItemCart> abctest = new HashMap<Integer, ItemCart>();
		
		ChiTietSanPham ctsp = ctspService.layChiTietSanPhamTheoId(Integer.parseInt(idchitietsp));
		ItemCart itemCart = new ItemCart(ctsp, Integer.parseInt(soluongmua));
		
		if(httpSession.getAttribute("cart") == null) {
			abctest.put(Integer.parseInt(idchitietsp), itemCart);
			cart.setItemCart(abctest);
			
			httpSession.setAttribute("cart", cart);
			
		} else {
			cart = (Cart) httpSession.getAttribute("cart");
			abctest = cart.getItemCart();
			abctest.put(Integer.parseInt(idchitietsp), itemCart);
			cart.setItemCart(abctest);
			
			httpSession.removeAttribute("cart");
			httpSession.setAttribute("cart", cart);
		}
		
//		Cart abcCart = (Cart) httpSession.getAttribute("cart");
//		for (ItemCart item : abcCart.getItemCart().values()) {
//			System.out.println(item.getChiTietSanPham().getIdChiTietSanPham()+ " " + item.getChiTietSanPham().getSizeSanPham().getTenSize()+ " - " + item.getSoluongmua());
//		}
	}
	
	
	@GetMapping("/slCart")
	@ResponseBody
	public String laySoLuongCart(HttpSession httpSession) {
		if(httpSession.getAttribute("cart") != null) {
			Cart layCart = (Cart) httpSession.getAttribute("cart");
			httpSession.setAttribute("slCart", layCart.getItemCart().size());
			return ("" + layCart.getItemCart().size());
		} else {
			httpSession.setAttribute("slCart", "0");
			return "0";			
		}
	}
	
	@GetMapping("/minustocart")
	@ResponseBody
	public String minusToCart(@RequestParam String key, HttpSession httpSession) {
		Cart layCart = (Cart) httpSession.getAttribute("cart");
		int i = Integer.parseInt(key);
		layCart.xoaItemTrongCart(i);
		httpSession.removeAttribute("cart");
		httpSession.setAttribute("cart", layCart);
		
		//System.out.println("size cua cart: "+layCart.getItemCart().size());
		return ("" + layCart.totalCart());
	}
	
	
	@GetMapping("/plustocart")
	@ResponseBody
	public String plusToCart(@RequestParam String key, HttpSession httpSession) {
		Cart layCart = (Cart) httpSession.getAttribute("cart");
		int i = Integer.parseInt(key);
		layCart.themItemVaoCart(i);
		httpSession.removeAttribute("cart");
		httpSession.setAttribute("cart", layCart);
		
		//System.out.println("size cua cart: "+layCart.getItemCart().size());
		return ("" + layCart.totalCart());
	}

	
	@GetMapping("/removeitemcart")
	@ResponseBody
	public String removeItemCart(@RequestParam String key, HttpSession httpSession) {
		Cart layCart = (Cart) httpSession.getAttribute("cart");
		int i = Integer.parseInt(key);
		layCart.removeItem(i);
		httpSession.removeAttribute("cart");
		httpSession.setAttribute("cart", layCart);
		
		//System.out.println("size cua cart: "+layCart.getItemCart().size());
		return ("" + layCart.totalCart());
	}
	
	
	@GetMapping("/xacthuchoachuybohoadon")
	@ResponseBody
	public String xacthuchoachuyboHD(@RequestParam int idhd, @RequestParam String tinhtrang) {
		System.out.println("dang xac thuc");
		System.out.println(idhd + tinhtrang);
		HoaDon hoadoncurrent = hdService.layHoaDonTheoID(idhd);
		hoadoncurrent.setTinhtrang(tinhtrang);
		hdService.updateTinhTrangHoaDon(hoadoncurrent);
		
		return tinhtrang;
	}

}
