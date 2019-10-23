package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.PageBean;
import com.service.ChapterService;

@Controller
public class ChapterController {

	@Autowired
	private ChapterService service;
	
	//未审核的查询
	@RequestMapping("check")
	@ResponseBody
	public List<Map<String, Object>> check() { 
		List<Map<String, Object>> infos = service.check(); 
		//int total=service.Total();
		//model.addAttribute("total", total);
		return infos;
	}
	 
	
	//通过的修改
	@RequestMapping("yupd")
	@ResponseBody
	public void yupd(int chid) {
		service.yupd(chid);
	}
	
	//不通过的修改
	@RequestMapping("wupd")
	@ResponseBody
	public void wupd(int chid) {
		service.wupd(chid);
	}
	
	/*
	 * @RequestMapping("wupd")
	 * 
	 * @ResponseBody public void wupd(int[] chids) { for(int
	 * i=1;i<=chids.length;i++) { service.wupd(chids[i]); } }
	 */
	
	
}
