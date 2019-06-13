package com.leanhtuan.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.leanhtuan.entity.ChiTietSanPham;
import com.leanhtuan.entity.SanPham;
import com.leanhtuan.entity.SizeSanPham;
import com.leanhtuan.service.ChiTietSanPhamService;
import com.leanhtuan.service.SanPhamService;

@Controller
@RequestMapping("single")
public class ShopSingleController {
	@Autowired
	SanPhamService sanphamService;
	
	@Autowired
	ChiTietSanPhamService ctspService;
	
	
	@GetMapping("/{idSP}")
	@Transactional
	public String GetSingle(@PathVariable("idSP") int idSP, ModelMap modelMap) {
		//lay ra san pham:
		SanPham sp = sanphamService.laySanPhamTheoID(idSP);
		modelMap.addAttribute("sp", sp);
		
		//lay list chi tiet sp theo idSanPham dc sap xep:
		List<ChiTietSanPham> listctsp = ctspService.layListChiTietSanPhamTheoIdSanPham(idSP);
		modelMap.addAttribute("listctsp", listctsp);
		
		//System.out.println(sp.get(0).getGiatien()());
		List<SanPham> list = sanphamService.layTatCaSanPhamTheoTrang(0);
		modelMap.addAttribute("listSanPhamTrangChu", list);
		return "shop-single.jsp";
	}
}
