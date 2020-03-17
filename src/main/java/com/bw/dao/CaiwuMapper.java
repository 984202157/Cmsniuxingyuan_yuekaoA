package com.bw.dao;

import java.util.List;

import com.bw.entity.CaiWu;
import com.bw.entity.CaiWuVo;
import com.bw.entity.CmsAtype;

public interface CaiwuMapper {

	List<CaiWu> selects(CaiWu caiwu);

	List<CmsAtype> selectt();

	int add(CaiWu caiwu);

	CaiWu select(Integer id);

	int upd(CaiWu caiwu);

}
