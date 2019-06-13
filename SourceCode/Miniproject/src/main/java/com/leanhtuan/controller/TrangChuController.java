package com.leanhtuan.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.leanhtuan.entity.SanPham;
import com.leanhtuan.service.SanPhamService;

@Controller
@RequestMapping("/")
public class TrangChuController {
	
	@Autowired
	SanPhamService sanphamService;
	SessionFactory sessionFactory;
	
	
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap) {
		/* lay ra 12 san pham cho trang shop.jsp mac dinh */
		List<SanPham> list = sanphamService.layTatCaSanPhamTheoTrang(0);
		
		modelMap.addAttribute("listSanPhamTrangChu", list);
		/*--------------------------------------------------*/
		return "index.jsp";
	}
}
