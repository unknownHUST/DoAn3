package com.leanhtuan.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.leanhtuan.entity.ChiTietSanPham;
import com.leanhtuan.entity.SanPham;
import com.leanhtuan.entity.SizeSanPham;
import com.leanhtuan.imp.ChiTietSanPhamImp;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChiTietSanPhamDAO implements ChiTietSanPhamImp{
	@Autowired
	SessionFactory sessionFactory;

	
	@Transactional
	public List<SanPham> laySanPhams() {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSizeSanPhams = session.createQuery("FROM SANPHAM").getResultList();
		return listSizeSanPhams;
	}

	@Transactional
	public int laySoLuongSanPhamConHangCuaSize(int idSizeSP) {
//		Session session = sessionFactory.getCurrentSession();
//		int sl = session.createQuery("SELECT COUNT(idSanPham) FROM CHITIETSANPHAM WHERE idSizeSanPham").getSingleResult();
		return 0;
	}

	@Transactional
	public ChiTietSanPham layChiTietSanPhamTheoId(int idChiTietSP) {
		Session session = sessionFactory.getCurrentSession();
		ChiTietSanPham ctsp = (ChiTietSanPham) session.createQuery("FROM CHITIETSANPHAM WHERE idChiTietSanPham = :idCTSP").setParameter("idCTSP", idChiTietSP).getSingleResult();
		return ctsp;
	}

	@Transactional
	public List<ChiTietSanPham> layListChiTietSanPhamTheoIdSanPham(int idSP) {
		Session session = sessionFactory.getCurrentSession();
		List<ChiTietSanPham> listCTSP = session.createQuery("FROM CHITIETSANPHAM WHERE idSanPham = :idSanPham ORDER BY idSizeSanPham").setParameter("idSanPham", idSP).getResultList();
		return listCTSP;
	}

	@Transactional
	public List<SanPham> layTatCaSanPham() {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = session.createQuery("FROM SANPHAM").getResultList();
		return listSanPhams;
	}

	
	@Transactional
	public int themChiTietSanPham(ChiTietSanPham ctsp) {
		Session session = sessionFactory.getCurrentSession();
		Integer id = (Integer) session.save(ctsp);
		if (id != null) {
			return id;
		} else {
			return -1;
		}
	}

	
	@Transactional
	public int updateChiTietSanPham(int idct, int sl) {
		Session session = sessionFactory.getCurrentSession();
		int i = session.createQuery("UPDATE CHITIETSANPHAM SET soluong = :solg WHERE idChiTietSanPham = :id").setParameter("solg", sl).setParameter("id", idct).executeUpdate();
		return i;
	}

	
	@Transactional
	public int deleteChiTietSanPham(int idct) {
		Session session = sessionFactory.getCurrentSession();
		int i = session.createQuery("DELETE FROM CHITIETSANPHAM WHERE idChiTietSanPham = :id").setParameter("id", idct).executeUpdate();
		return i;
	}
	
	
}
