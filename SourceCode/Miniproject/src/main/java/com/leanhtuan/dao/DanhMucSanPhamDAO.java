package com.leanhtuan.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.leanhtuan.entity.DanhMucSanPham;
import com.leanhtuan.imp.DanhMucSanPhamImp;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class DanhMucSanPhamDAO implements DanhMucSanPhamImp {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<DanhMucSanPham> layListDanhMucSanPhams() {
		Session session = sessionFactory.getCurrentSession();
		List<DanhMucSanPham> list = session.createQuery("FROM DANHMUCSANPHAM").getResultList();
		return list;
	}

	@Transactional
	public DanhMucSanPham layDanhMucSanPhamTheoId(int idDM) {
		Session session = sessionFactory.getCurrentSession();
		DanhMucSanPham dMucSanPham = (DanhMucSanPham) session.createQuery("FROM DANHMUCSANPHAM WHERE idDanhMucSanPham = :id").setParameter("id", idDM).getSingleResult();
		return dMucSanPham;
	}

}
