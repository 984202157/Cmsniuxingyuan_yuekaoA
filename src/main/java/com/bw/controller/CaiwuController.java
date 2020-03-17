package com.bw.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bw.entity.CaiWu;
import com.bw.entity.CaiWuVo;
import com.bw.entity.CmsAtype;
import com.bw.service.CaiwuService;
import com.github.pagehelper.PageInfo;

@Controller
public class CaiwuController {
	@Resource
	private CaiwuService caiwuService;
	
	@RequestMapping("list")
	public String list(CaiWu caiwu,Model m,@RequestParam(defaultValue = "1") Integer page,@RequestParam(defaultValue = "5")Integer pageSize){
		
		PageInfo<CaiWu> info=caiwuService.selects(caiwu,page,pageSize);
		
		
		
		m.addAttribute("info",info);
		m.addAttribute("caiwuVo",caiwu);
		return "list";
	}
	
	@GetMapping("toadd")
	public String toadd(){
		return "add";
	}
	@ResponseBody
	@RequestMapping("selectt")
	public Object selectt(Model m){
		List<CmsAtype> list=caiwuService.selectt();
		return list;
	}
	
	@ResponseBody
	@PostMapping("add")
	public Object add(CaiWu caiwu){
		System.out.println(caiwu);
		int i=caiwuService.add(caiwu);
		System.out.println(i);
		return i>0;
	}
	
	@GetMapping("toupd")
	public String toupd(Integer id,Model m){
		CaiWu caiWu=caiwuService.select(id);
		m.addAttribute("caiWu", caiWu);
		return "update";
	}
	
	@ResponseBody
	@PostMapping("upd")
	public Object upd(CaiWu caiwu){
		System.out.println(caiwu);
		int i=caiwuService.upd(caiwu);
		System.out.println(i);
		return i>0;
	}
}
