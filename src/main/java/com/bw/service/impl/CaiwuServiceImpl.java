package com.bw.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bw.dao.CaiwuMapper;
import com.bw.entity.CaiWu;
import com.bw.entity.CaiWuVo;
import com.bw.entity.CmsAtype;
import com.bw.service.CaiwuService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class CaiwuServiceImpl implements CaiwuService {
	@Resource
	private CaiwuMapper caiwuMapper;

	@Override
	public PageInfo<CaiWu> selects(CaiWu caiwu, Integer page, Integer pageSize) {
		PageHelper.startPage(page, pageSize);
		List<CaiWu> list = caiwuMapper.selects(caiwu);
		return new PageInfo<CaiWu>(list);
	}

	@Override
	public List<CmsAtype> selectt() {
		// TODO Auto-generated method stub
		return caiwuMapper.selectt();
	}

	@Override
	public int add(CaiWu caiwu) {
		// TODO Auto-generated method stub
		return caiwuMapper.add(caiwu);
	}

	@Override
	public CaiWu select(Integer id) {
		// TODO Auto-generated method stub
		return caiwuMapper.select(id);
	}

	@Override
	public int upd(CaiWu caiwu) {
		// TODO Auto-generated method stub
		return caiwuMapper.upd(caiwu);
	}

	
}
	
	
