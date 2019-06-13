package com.leanhtuan.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.leanhtuan.entity.ChiTietHoaDon;
import com.leanhtuan.entity.ChiTietSanPham;
import com.leanhtuan.entity.DanhMucSanPham;
import com.leanhtuan.entity.HoaDon;
import com.leanhtuan.entity.ItemCart;
import com.leanhtuan.entity.SanPham;
import com.leanhtuan.entity.SizeSanPham;
import com.leanhtuan.service.ChiTietHoaDonService;
import com.leanhtuan.service.ChiTietSanPhamService;
import com.leanhtuan.service.DanhMucSanPhamService;
import com.leanhtuan.service.HoaDonService;
import com.leanhtuan.service.SanPhamService;
import com.leanhtuan.service.SizeSanPhamService;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	SanPhamService sanphamService;
	@Autowired
	DanhMucSanPhamService dmspService;
	@Autowired
	SizeSanPhamService sizespService;
	@Autowired
	HoaDonService hoadonService;
	@Autowired
	ChiTietHoaDonService cthdService;
	@Autowired
	ChiTietSanPhamService ctspService;
	
	
	@Autowired
	ServletContext servletContext;
	
	
	@GetMapping
	public String getDefault(ModelMap modelMap) {
		List<SanPham> listsPhams = sanphamService.layTatCaSanPham();
		modelMap.addAttribute("soluongsp", listsPhams.size());
		
		List<ChiTietHoaDon> listcthDons = cthdService.layTatCaChiTietHoaDon();
		double tongtien = 0;
		for (ChiTietHoaDon chiTietHoaDon : listcthDons) {
			ChiTietSanPham ctsPham = ctspService.layChiTietSanPhamTheoId(chiTietHoaDon.getChiTietHoaDonId().getIdChiTietSanPham());
			//SanPham sanPham = sanphamService.laySanPhamTheoID(ctsPham.getSanPham().get)
			tongtien = tongtien + chiTietHoaDon.getSoluongmua()*ctsPham.getSanPham().getGiatien();
		}
		modelMap.addAttribute("tongtien", tongtien);
		
		List<HoaDon> listhoadon = hoadonService.layListHoaDons();
		modelMap.addAttribute("listhdbanhang", listhoadon);
		return "admin-dashboard.jsp";
	}
	
	@GetMapping("/products/addproduct")
	public String getAddProducts(ModelMap modelMap) {
		List<DanhMucSanPham> listdanhmuc = dmspService.layListDanhMucSanPhams();
		modelMap.addAttribute("listdanhmuc", listdanhmuc);
		
		List<SizeSanPham> listsize = sizespService.layTatCaSizeSanPham();
		modelMap.addAttribute("listsizesp", listsize);
		return "add-products.jsp";
	}
	
	@PostMapping("/products/addproduct")
	public String postAddProducts(@RequestParam int madanhmuc, @RequestParam String tensanpham, @RequestParam float giasanpham, @RequestParam String gioitinh, @RequestParam String motasanpham, @RequestParam(value="fileanh") CommonsMultipartFile commonsMultipartFile, HttpServletRequest request, ModelMap modelMap) {
		List<DanhMucSanPham> listdanhmuc = dmspService.layListDanhMucSanPhams();
		modelMap.addAttribute("listdanhmuc", listdanhmuc);
		
		List<SizeSanPham> listsize = sizespService.layTatCaSizeSanPham();
		modelMap.addAttribute("listsizesp", listsize);
		
		String nameFile = commonsMultipartFile.getOriginalFilename();
		
		SanPham sanpham = new SanPham();
		DanhMucSanPham dmsp = dmspService.layDanhMucSanPhamTheoId(madanhmuc);
		sanpham.setDanhMucSanPham(dmsp);
		sanpham.setTenSanPham(tensanpham);
		sanpham.setGiatien(giasanpham);
		sanpham.setGioitinh(gioitinh);
		sanpham.setMotaSP(motasanpham);
		sanpham.setImageSanPham(nameFile);
		
		int idsp = sanphamService.themSanPham(sanpham);
		if (idsp > 0) {
//			System.out.println("idSanPham dc them la: " + sanpham.getLi );
			String path_save_file = servletContext.getRealPath("/resources/images/SanPham/");
			try {
				commonsMultipartFile.transferTo(new File(path_save_file+nameFile));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		} else {
			System.out.println("Them san Pham khong thanh cong");
		}
		
		SanPham spCurrent = sanphamService.laySanPhamTheoID(idsp);
		modelMap.addAttribute("sanphamCurrent", spCurrent);
		
		return "update-product.jsp";
	}
	
	
	
	@PostMapping("/products/updatesp")
	public String postUpdateSanPham(@RequestParam int masp, @RequestParam int madanhmuc, @RequestParam String tensanpham, @RequestParam float giasanpham, @RequestParam String gioitinh, @RequestParam String motasanpham, ModelMap modelMap) {
		
		int i = sanphamService.updateSanPham(masp, madanhmuc, tensanpham, giasanpham, gioitinh, motasanpham);
		System.out.println("so cot dc update: " + i);
		
		
		List<DanhMucSanPham> listdanhmuc = dmspService.layListDanhMucSanPhams();
		modelMap.addAttribute("listdanhmuc", listdanhmuc);
		
		List<SizeSanPham> listsize = sizespService.layTatCaSizeSanPham();
		modelMap.addAttribute("listsizesp", listsize);
		
		SanPham spCurrent = sanphamService.laySanPhamTheoID(masp);
		modelMap.addAttribute("sanphamCurrent", spCurrent); 
		
		List<ChiTietSanPham> listctsp = ctspService.layListChiTietSanPhamTheoIdSanPham(masp);
		modelMap.addAttribute("listctsp", listctsp);
		return "update-product.jsp";
	}
	
	
	@GetMapping("/products/update/{idsp}")
	public String getUpdateProduct(@PathVariable int idsp, ModelMap modelMap) {
		List<DanhMucSanPham> listdanhmuc = dmspService.layListDanhMucSanPhams();
		modelMap.addAttribute("listdanhmuc", listdanhmuc);
		
		List<SizeSanPham> listsize = sizespService.layTatCaSizeSanPham();
		modelMap.addAttribute("listsizesp", listsize);
		
		SanPham spCurrent = sanphamService.laySanPhamTheoID(idsp);
		modelMap.addAttribute("sanphamCurrent", spCurrent); 
		
//		spCurrent.getIdSanPham()
		
		List<ChiTietSanPham> listctsp = ctspService.layListChiTietSanPhamTheoIdSanPham(idsp);
		modelMap.addAttribute("listctsp", listctsp);
//		listctsp.get(2).getIdChiTietSanPham()
		return "update-product.jsp";
	}
	
	
	@GetMapping("/products/delete/{idsp}")
	public String getDeleteProduct(@PathVariable int idsp, ModelMap modelMap) {
		List<ChiTietSanPham> listCTSPdelete = ctspService.layListChiTietSanPhamTheoIdSanPham(idsp);
		for (ChiTietSanPham chiTietSanPham : listCTSPdelete) {
			int j = ctspService.deleteChiTietSanPham(chiTietSanPham.getIdChiTietSanPham());
			//System.out.println(j);
		}
		int i = sanphamService.deleteSanPham(idsp);
//		System.out.println("i = " + i);
		List<DanhMucSanPham> listDMSP = dmspService.layListDanhMucSanPhams();
		modelMap.addAttribute("listdmsp", listDMSP);
		
		List<SanPham> listSP = sanphamService.layTatCaSanPham();
		modelMap.addAttribute("listsp", listSP);
		
		return "products.jsp";
	}
	
	
	@GetMapping("/products/deletectsp/{idct}")
	public String getDeleteCTSP(@PathVariable int idct, ModelMap modelMap) {
		int idsp = ctspService.layChiTietSanPhamTheoId(idct).getSanPham().getIdSanPham();
		int i = ctspService.deleteChiTietSanPham(idct);
		
		
		List<DanhMucSanPham> listdanhmuc = dmspService.layListDanhMucSanPhams();
		modelMap.addAttribute("listdanhmuc", listdanhmuc);
		
		List<SizeSanPham> listsize = sizespService.layTatCaSizeSanPham();
		modelMap.addAttribute("listsizesp", listsize);
		
		SanPham spCurrent = sanphamService.laySanPhamTheoID(idsp);
		modelMap.addAttribute("sanphamCurrent", spCurrent); 
		
		List<ChiTietSanPham> listctsp = ctspService.layListChiTietSanPhamTheoIdSanPham(idsp);
		modelMap.addAttribute("listctsp", listctsp);
		return "update-product.jsp";
	}
	
	
	@GetMapping("/products/addctsp/{idsp}/")
	public String getAddCTSP(@PathVariable int idsp, @RequestParam Integer masize, @RequestParam Integer soluong, ModelMap modelMap) {
		SanPham sPham = sanphamService.laySanPhamTheoID(idsp);
		ChiTietSanPham ctsp = new ChiTietSanPham();
		ctsp.setSanPham(sPham);
		ctsp.setSizeSanPham(sizespService.laySizeSanPhamTheoId(masize));
		ctsp.setSoluong(soluong);
		
		int idctnew = ctspService.themChiTietSanPham(ctsp);
		System.out.println("id ctsp moi: " + idctnew);
		
		List<DanhMucSanPham> listdanhmuc = dmspService.layListDanhMucSanPhams();
		modelMap.addAttribute("listdanhmuc", listdanhmuc);
		
		List<SizeSanPham> listsize = sizespService.layTatCaSizeSanPham();
		modelMap.addAttribute("listsizesp", listsize);
		
		SanPham spCurrent = sanphamService.laySanPhamTheoID(idsp);
		modelMap.addAttribute("sanphamCurrent", spCurrent); 
		
		List<ChiTietSanPham> listctsp = ctspService.layListChiTietSanPhamTheoIdSanPham(idsp);
		modelMap.addAttribute("listctsp", listctsp);
		return "update-product.jsp";
	}
	
	@GetMapping("/products")
	public String getPageProducts(ModelMap modelMap) {
		List<DanhMucSanPham> listDMSP = dmspService.layListDanhMucSanPhams();
		modelMap.addAttribute("listdmsp", listDMSP);
		
		List<SanPham> listSP = sanphamService.layTatCaSanPham();
		modelMap.addAttribute("listsp", listSP);
		return "products.jsp";
	}
	
	
	@GetMapping("/hoadon")
	public String getPageHoaDon(ModelMap modelMap) {
		List<HoaDon> listhoadon = hoadonService.layListHoaDons();
		modelMap.addAttribute("listhdbanhang", listhoadon);
		return "hoadon.jsp";
	}
	
	
	@PostMapping("/hoadon")
	public String postPageHoaDon(@RequestParam String status, ModelMap modelMap) {
		if (status.equals("0")) {
			List<HoaDon> listhoadon = hoadonService.layListHoaDons();
			modelMap.addAttribute("listhdbanhang", listhoadon);			
		} else {
			List<HoaDon> listhoadon = hoadonService.layListHoaDonTheoTinhTrang(status);
			modelMap.addAttribute("listhdbanhang", listhoadon);	
		}
		return "hoadon.jsp";
	}
	
	
	@GetMapping("/hoadon/chitiethoadon/{idHD}")
	public String getPageChiTietHoaDon(@PathVariable int idHD, ModelMap modelMap) {
		List<ChiTietHoaDon> listCTHD = cthdService.layListChiTietHoaDonTheoID(idHD);
		
		List<ItemCart> listctsp = new ArrayList<ItemCart>();
		for (ChiTietHoaDon chiTietHoaDon : listCTHD) {
			ItemCart itemCart = new ItemCart();
			itemCart.setChiTietSanPham(ctspService.layChiTietSanPhamTheoId(chiTietHoaDon.getChiTietHoaDonId().getIdChiTietSanPham()));
			itemCart.setSoluongmua(chiTietHoaDon.getSoluongmua());
			listctsp.add(itemCart);
		}
		
		
		modelMap.addAttribute("listctsp", listctsp);
		
		return "chitiethoadon.jsp";
	}
	
	
	@PostMapping("/products")
	public String postProDucts(@RequestParam int iddanhmuc, @RequestParam String gioitinh, ModelMap modelMap) {
		//System.out.println("iddm: " + iddanhmuc + "gioitinh :" + gioitinh);
		String[] arrayGTStrings = gioitinh.split(",");
		List<String> listgt = Arrays.asList(arrayGTStrings);
		
		List<DanhMucSanPham> listDMSP = dmspService.layListDanhMucSanPhams();
		modelMap.addAttribute("listdmsp", listDMSP);

		if (iddanhmuc == 0) {
			List<SanPham> listSP = sanphamService.layListSanPhamTheoGioiTinhVaDanhMuc(listgt);
			modelMap.addAttribute("listsp", listSP);	
		} else {
			List<SanPham> listSP = sanphamService.layListSanPhamTheoGioiTinhVaDanhMuc(iddanhmuc, listgt);
			modelMap.addAttribute("listsp", listSP);			
		}
		

		return "products.jsp";
	}
}
