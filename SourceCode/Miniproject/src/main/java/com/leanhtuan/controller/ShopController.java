package com.leanhtuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.leanhtuan.entity.SanPham;
import com.leanhtuan.entity.SizeSanPham;
import com.leanhtuan.service.ChiTietSanPhamService;
import com.leanhtuan.service.SanPhamService;
import com.mysql.cj.xdevapi.SessionFactory;

@Controller
@RequestMapping("shop")
public class ShopController {
	
	@Autowired
	SanPhamService sanphamService;
	
	@Autowired
	ChiTietSanPhamService ctspService;	
	
	
	@GetMapping
	public String Default(ModelMap modelMap) {
		
		
		/* lay ra 12 san pham cho trang shop.jsp mac dinh */
		List<SanPham> list = sanphamService.layTatCaSanPhamNamTheoTrang(0);
		modelMap.addAttribute("listSanPhams", list);
		/*--------------------------------------------------*/
		
		modelMap.addAttribute("soSPnam", sanphamService.layTatCaSanPhamNam().size());
		modelMap.addAttribute("soSPnu", sanphamService.layTatCaSanPhamNu().size());
		
		//lay so page co the co:
		int sotrang = (sanphamService.layTatCaSanPham().size())/12 + 1;
		modelMap.addAttribute("sotrang", sotrang);
		
		//Lay danh sach cac size:
		//List<SanPham> listsize = sanphamService.layTatCaSanPham();
 		//dang fixbug van chua tim ra nguyen nhan.
		return "shop.jsp";
	}
	
	@GetMapping("/{p}")
	public String ShopTheoGioiTinh(@PathVariable("p") int p,@RequestParam("page") int page,ModelMap modelMap) {
		//System.out.println(p);
		modelMap.addAttribute("phanloai", p);
		modelMap.addAttribute("page_active", page);
		List<SanPham> list;
		if(p == 0) {
			list = sanphamService.layTatCaSanPhamTheoTrang((page -1)*12);
			
			modelMap.addAttribute("listSanPhams", list);
			modelMap.addAttribute("soSPnam", sanphamService.layTatCaSanPhamNam().size());
			modelMap.addAttribute("soSPnu", sanphamService.layTatCaSanPhamNu().size());
			
			//lay so page co the co:
			int sotrang = (sanphamService.layTatCaSanPham().size())/12 + 1;
			modelMap.addAttribute("sotrang", sotrang);
		} else if (p == 1) {
			list = sanphamService.layTatCaSanPhamNamTheoTrang((page -1)*12);
			
			modelMap.addAttribute("listSanPhams", list);
			modelMap.addAttribute("soSPnam", sanphamService.layTatCaSanPhamNam().size());
			modelMap.addAttribute("soSPnu", sanphamService.layTatCaSanPhamNu().size());
			
			//lay so page co the co:
			int sotrang = (sanphamService.layTatCaSanPhamNam().size())/12 + 1;
			modelMap.addAttribute("sotrang", sotrang);
		} else if (p == 2) {
			list = sanphamService.layTatCaSanPhamNuTheoTrang((page -1)*12);
			
			modelMap.addAttribute("listSanPhams", list);
			modelMap.addAttribute("soSPnam", sanphamService.layTatCaSanPhamNam().size());
			modelMap.addAttribute("soSPnu", sanphamService.layTatCaSanPhamNu().size());
			
			//lay so page co the co:
			int sotrang = (sanphamService.layTatCaSanPhamNu().size())/12 + 1;
			modelMap.addAttribute("sotrang", sotrang);
		} else {
			System.out.println("page ko co gi het;");
		}

		return "shop.jsp";
	}
	
	
	@GetMapping("/search")
	public String getTimKiemByPrice(@RequestParam String amount, @RequestParam String amount1, @RequestParam String amount2) {
		System.out.println(amount1);
		return "shop.jsp";
	}
	
	
	@GetMapping("/searchname")
	public String getTimKiemByName(@RequestParam String searchname, ModelMap modelMap) {
		List<SanPham> list = sanphamService.searchSanPhamTheoTen(searchname, 0);
		
		modelMap.addAttribute("listSanPhams", list);
		modelMap.addAttribute("soSPnam", sanphamService.layTatCaSanPhamNam().size());
		modelMap.addAttribute("soSPnu", sanphamService.layTatCaSanPhamNu().size());
		
		//lay so page co the co:
		modelMap.addAttribute("sotrang", 1);
		return "shop.jsp";
	}
	
	
}
