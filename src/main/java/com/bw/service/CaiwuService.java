package com.bw.service;

import java.util.List;

import com.bw.entity.CaiWu;
import com.bw.entity.CaiWuVo;
import com.bw.entity.CmsAtype;
import com.github.pagehelper.PageInfo;

public interface CaiwuService {

	PageInfo<CaiWu> selects(CaiWu caiwu, Integer page, Integer pageSize);

	List<CmsAtype> selectt();

	int add(CaiWu caiwu);

	CaiWu select(Integer id);

	int upd(CaiWu caiwu);

}
