package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.PageBean;
import com.idao.ChapterDao;

@Service
public class ChapterService {

	@Autowired
	private ChapterDao dao;
	
	public int Total() {
		return dao.Total();
	}
	
	/*
	 * public List<Map<String, Object>> check(PageBean pb){ return dao.check(pb); }
	 */
	public List<Map<String, Object>> check(){
		return dao.check();
	}
	
	public void yupd(int chid) {
		dao.yupd(chid);
	}
	
	public void wupd(int chid) {
		dao.wupd(chid);
	}
}
