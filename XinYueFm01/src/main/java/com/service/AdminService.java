package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.AdminVO;
import com.idao.AdminDao;

@Service
@Transactional
public class AdminService {

	@Autowired
	private AdminDao dao;
	
	public AdminVO login(AdminVO vo) {
		return dao.login(vo);
	}
	
	/*
	 * public int ins(AdminVO vo) { return dao.ins(vo); }
	 */
	
	public List<AdminVO> sel() {
		return dao.sel();
	}
}
