package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.PandianEntity;
import com.utils.PageUtils;

import java.util.Map;


/**
 * 商品信息
 *
 * @author 
 * @email 
 * @date 2023-04-12 10:13:58
 */
public interface PandianService extends IService<PandianEntity> {
	PageUtils queryPage(Map<String, Object> params, Wrapper<PandianEntity> wrapper);
}

