package com.leanhtuan.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.leanhtuan.entity.ChiTietHoaDon;
import com.leanhtuan.entity.ChiTietHoaDonId;
import com.leanhtuan.imp.ChiTietHoaDonImp;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChiTietHoaDonDAO implements ChiTietHoaDonImp {
	
	@Autowired
	SessionFactory sessionFactory;

	
	@Transactional
	public boolean themChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		Session session = sessionFactory.getCurrentSession();
		ChiTietHoaDonId id = (ChiTietHoaDonId) session.save(chiTietHoaDon);
		if (id != null) {
			//System.out.println("them chi tiet hoa don tc");
			//session.getTransaction().commit();
			//session.close();
			return true;
		} else {
			return false;
		}
	}


	@Transactional
	public List<ChiTietHoaDon> layListChiTietHoaDonTheoID(int idhoadon) {
		Session session = sessionFactory.getCurrentSession();
		List<ChiTietHoaDon> list = session.createQuery("FROM CHITIETHOADON WHERE idHoaDon = :id").setParameter("id", idhoadon).getResultList();
		return list;
	}


	@Transactional
	public List<ChiTietHoaDon> layTatCaChiTietHoaDon() {
		Session session = sessionFactory.getCurrentSession();
		List<ChiTietHoaDon> list = session.createQuery("FROM CHITIETHOADON").getResultList();
		return list;
	}
	
	
	
}
