package com.idao;

import java.util.List;

import com.entity.AdminVO;

public interface AdminDao {

	public AdminVO login(AdminVO vo);
	
	//public int ins(AdminVO vo);
	
	public List<AdminVO> sel();
}
