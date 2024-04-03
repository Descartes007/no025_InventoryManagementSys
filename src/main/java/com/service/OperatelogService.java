package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.OperatelogEntity;
import com.utils.PageUtils;

import java.util.Map;


/**
 * 日志记录
 *
 * @author 
 * @email 
 * @date 2023-04-12 10:13:58
 */
public interface OperatelogService extends IService<OperatelogEntity> {
	/**
	 * 分页查询
	 * @param params
	 * @param wrapper
	 * @return
	 */
	PageUtils queryPage(Map<String, Object> params, Wrapper<OperatelogEntity> wrapper);
}

