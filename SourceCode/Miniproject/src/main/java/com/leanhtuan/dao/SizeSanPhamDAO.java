package com.leanhtuan.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.leanhtuan.entity.SizeSanPham;
import com.leanhtuan.imp.SizeSanPhamImp;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class SizeSanPhamDAO implements SizeSanPhamImp {
	
	
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public List<SizeSanPham> layTatCaSizeSanPham() {
		Session session = sessionFactory.getCurrentSession();
		List<SizeSanPham> list = session.createQuery("FROM SIZESANPHAM").getResultList();
		return list;
	}

	
	@Transactional
	public SizeSanPham laySizeSanPhamTheoId(int idsize) {
		Session session = sessionFactory.getCurrentSession();
		SizeSanPham sizeSanPham = (SizeSanPham) session.createQuery("FROM SIZESANPHAM WHERE idSizeSanPham = :id").setParameter("id", idsize).getSingleResult();
		return sizeSanPham;
	}
	
	
}
