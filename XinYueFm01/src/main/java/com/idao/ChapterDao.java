package com.idao;

import java.util.List;
import java.util.Map;

import com.entity.PageBean;

public interface ChapterDao {

	public int Total();
	
	//public List<Map<String, Object>> check(PageBean pb);
	public List<Map<String, Object>> check();
	
	public void yupd(int chid);
	
	public void wupd(int chid);
}
