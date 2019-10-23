package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.AdminVO;
import com.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService service;
	
	//后台登录
	@RequestMapping("adminLogin")
	public String login(AdminVO vo,HttpSession session,Model model) {
		AdminVO admin = service.login(vo);
		if(admin!=null) {
			session.setAttribute("admin", admin);
			return "adminMain";
		}else {
			model.addAttribute("alter", "账号或密码错误！");
			return "adminLogin";
		}
		
	}
	
	/*@RequestMapping("adminIns")
	public String ins(AdminVO vo) {
		int count = service.ins(vo);
		if(count > 0) {
			return "adminMain";
		}else {
			return "adminIns";
		}
	}*/
	
	//查询所有管理员
	@RequestMapping("adminSel")
	public String sel(Model model) {
		List<AdminVO> admins = service.sel();
		model.addAttribute("admins",admins);
		return "adminSel";
	}
	
	//退出登录
	@RequestMapping("adminExit")
	public String exit(HttpSession session) {
		session.invalidate();
		return "adminLogin";
	}
}
