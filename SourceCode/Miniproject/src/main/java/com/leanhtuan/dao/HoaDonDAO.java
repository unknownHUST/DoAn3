package com.leanhtuan.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.leanhtuan.entity.HoaDon;
import com.leanhtuan.imp.HoaDonImp;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class HoaDonDAO implements HoaDonImp {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public int themHoaDon(HoaDon hoadon) {
		Session session = sessionFactory.getCurrentSession();
		Integer id = (Integer) session.save(hoadon);
		if (id != null) {
			return id;
		} else {
			return -1;
		}
	}

	@Transactional
	public List<HoaDon> layListHoaDons() {
		Session session = sessionFactory.getCurrentSession();
		List<HoaDon> list = session.createQuery("FROM HOADON").getResultList();
		return list;
	}

	@Transactional
	public List<HoaDon> layListHoaDonTheoTinhTrang(String status) {
		Session session = sessionFactory.getCurrentSession();
		List<HoaDon> list = session.createQuery("FROM HOADON WHERE tinhtrang = :tt").setParameter("tt", status).getResultList();
		return list;
	}

	
	@Transactional
	public HoaDon layHoaDonTheoID(int idhd) {
		Session session = sessionFactory.getCurrentSession();
		HoaDon hd = (HoaDon) session.createQuery("FROM HOADON WHERE idHoaDon = :id").setParameter("id", idhd).getSingleResult();
		return hd;
	}

	
	@Transactional
	public void updateTinhTrangHoaDon(HoaDon hd) {
		Session session = sessionFactory.getCurrentSession();
		session.update(hd);
	}

	

}
