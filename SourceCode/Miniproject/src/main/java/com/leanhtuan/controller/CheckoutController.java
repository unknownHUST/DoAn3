package com.leanhtuan.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.leanhtuan.entity.Cart;
import com.leanhtuan.entity.ChiTietHoaDon;
import com.leanhtuan.entity.ChiTietHoaDonId;
import com.leanhtuan.entity.HoaDon;
import com.leanhtuan.entity.ItemCart;
import com.leanhtuan.service.ChiTietHoaDonService;
import com.leanhtuan.service.HoaDonService;

@Controller
@RequestMapping("checkout")
public class CheckoutController {
	
	@Autowired
	HoaDonService hoadonService;
	
	@Autowired
	ChiTietHoaDonService cthdService;
	
	
	@GetMapping
	public String getDefault(HttpSession httpSession, ModelMap modelMap) {
		Cart cart = (Cart) httpSession.getAttribute("cart");
		modelMap.addAttribute("listcart", cart);
		return "checkout.jsp";
	}
	
	@PostMapping
	public String themHoaDon(@RequestParam String hotenkhachhang, 
							 @RequestParam String sodienthoai, 
							 @RequestParam String diachigiaohang, HttpSession httpSession) {
		//System.out.println(hotenkhachhang + sodienthoai + diachigiaohang);
		if (httpSession.getAttribute("cart") != null) {
			Cart cart = (Cart) httpSession.getAttribute("cart");
			
			HoaDon hoaDon = new HoaDon();
			hoaDon.setTenKhachHang(hotenkhachhang);
			hoaDon.setSdtKhachHang(sodienthoai);
			hoaDon.setDiachigiaohang(diachigiaohang);
			hoaDon.setTinhtrang("waiting");
			hoaDon.setTimeOrder(new Timestamp(new Date().getTime()));
			hoaDon.setHinhthucthanhtoan("Direct payment");
			
			int idHoaDon = hoadonService.themHoaDon(hoaDon);
			if (idHoaDon != -1) {
				//Set<ChiTietHoaDon> listChiTietHoaDons = new HashSet<ChiTietHoaDon>();
				for (ItemCart itemCart : cart.getItemCart().values()) {
					ChiTietHoaDonId cthdId = new ChiTietHoaDonId();
					cthdId.setIdHoaDon(idHoaDon);
					cthdId.setIdChiTietSanPham(itemCart.getChiTietSanPham().getIdChiTietSanPham());
					
					ChiTietHoaDon ctHoaDon = new ChiTietHoaDon();
					ctHoaDon.setChiTietHoaDonId(cthdId);
					ctHoaDon.setSoluongmua(itemCart.getSoluongmua());
					
					//System.out.println("cthd: " + ctHoaDon.getChiTietHoaDonId().getIdHoaDon() + ctHoaDon.getChiTietHoaDonId().getIdChiTietSanPham() + ctHoaDon.getSoluongmua());
					
					cthdService.themChiTietHoaDon(ctHoaDon);
				}				 
			} else {
				System.out.println("them that bai");
			}
			
			
					
		}
		
		httpSession.invalidate();
		return "thankyou.jsp";
	}
}
