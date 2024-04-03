package com.service.impl;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.PandianDao;
import com.entity.PandianEntity;
import com.service.PandianService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service("pandianService")
public class PandianServiceImpl extends ServiceImpl<PandianDao, PandianEntity> implements PandianService {

    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PandianEntity> wrapper) {
		  Page<PandianEntity> page =new Query<PandianEntity>(params).getPage();
	        page.setRecords(baseMapper.selectPage(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

}
