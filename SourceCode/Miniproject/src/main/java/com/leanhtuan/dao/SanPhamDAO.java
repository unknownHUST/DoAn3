package com.leanhtuan.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.leanhtuan.entity.SanPham;
import com.leanhtuan.imp.SanPhamImp;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamDAO implements SanPhamImp {
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	@Transactional
	public List<SanPham> layTatCaSanPham() {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = session.createQuery("FROM SANPHAM").getResultList();
		return listSanPhams;
	}

	
	@Transactional
	public List<SanPham> layTatCaSanPhamNam() {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = session.createQuery("FROM SANPHAM WHERE gioitinh='male' or gioitinh='all'").getResultList();
		return listSanPhams;
	}


	@Transactional
	public List<SanPham> layTatCaSanPhamNu() {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = session.createQuery("FROM SANPHAM WHERE gioitinh='female' or gioitinh='all'").getResultList();
		return listSanPhams;
	}

	@Transactional
	public List<SanPham> layTatCaSanPhamTheoTrang(int vitridautrang) {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = session.createQuery("FROM SANPHAM").setFirstResult(vitridautrang).setMaxResults(12).getResultList();
		return listSanPhams;
	}


	@Transactional
	public List<SanPham> layTatCaSanPhamNamTheoTrang(int vitridautrang) {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = session.createQuery("FROM SANPHAM WHERE gioitinh='male' or gioitinh='all'").setFirstResult(vitridautrang).setMaxResults(12).getResultList();
		return listSanPhams;
	}


	@Transactional
	public List<SanPham> layTatCaSanPhamNuTheoTrang(int vitridautrang) {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = session.createQuery("FROM SANPHAM WHERE gioitinh='female' or gioitinh='all'").setFirstResult(vitridautrang).setMaxResults(12).getResultList();
		return listSanPhams;
	}


	@Transactional
	public SanPham laySanPhamTheoID(int idSanPham) {
		Session session = sessionFactory.getCurrentSession();
		SanPham sanPham = (SanPham) session.createQuery("FROM SANPHAM WHERE idSanPham = :idSP").setParameter("idSP", idSanPham).getSingleResult();
		//SanPham sp = sanPham.get(0);
		return sanPham;
	}


	@Transactional
	public List<SanPham> layListSanPhamTheoGioiTinhVaDanhMuc(int idDanhMuc, List<String> gioitinh) {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPham = session.createQuery("FROM SANPHAM WHERE idDanhMucSanPham = :idDMSP and gioitinh IN (:gt)").setParameter("idDMSP", idDanhMuc).setParameterList("gt", gioitinh).getResultList();
		//SanPham sp = sanPham.get(0);
		return listSanPham;
	}

	
	@Transactional
	public List<SanPham> layListSanPhamTheoGioiTinhVaDanhMuc(List<String> gioitinh) {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPham = session.createQuery("FROM SANPHAM WHERE gioitinh IN (:gt)").setParameterList("gt", gioitinh).getResultList();
		//SanPham sp = sanPham.get(0);
		return listSanPham;
	}


	@Transactional
	public List<SanPham> searchSanPhamTheoTen(String name, int vitridautrang) {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = session.createQuery("FROM SANPHAM WHERE tenSanPham LIKE :tensp").setParameter("tensp", "%" + name + "%").setFirstResult(vitridautrang).setMaxResults(12).getResultList();
		return listSanPhams;
	}


	@Transactional
	public int themSanPham(SanPham sanPham) {
		Session session = sessionFactory.getCurrentSession();
		Integer id = (Integer) session.save(sanPham);
		if (id != null) {
			return id;
		} else {
			return -1;
		}
	}


	@Transactional
	public int updateSanPham(int idsp, int idDanhMucSanPham, String tenSanPham, float giatien, String gioitinh,
			String motaSP) {
		Session session = sessionFactory.getCurrentSession();
		
		int i = session.createQuery("UPDATE SANPHAM SET idDanhMucSanPham = :iddm, tenSanPham = :tensp, giatien = :gia, gioitinh = :gt, motaSP = :mota "
				+ "WHERE idSanPham = :id").setParameter("id", idsp).setParameter("iddm", idDanhMucSanPham).setParameter("tensp", tenSanPham).setParameter("gia", giatien).setParameter("gt", gioitinh).setParameter("mota", motaSP).executeUpdate();
		
		return i;
	}


	@Transactional
	public int deleteSanPham(int idsp) {
		Session session = sessionFactory.getCurrentSession();
		int i = session.createQuery("DELETE FROM SANPHAM WHERE idSanPham = :id").setParameter("id", idsp).executeUpdate();
		return i;
	}





}
