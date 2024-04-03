package com.service.impl;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.OperatelogDao;
import com.entity.OperatelogEntity;
import com.service.OperatelogService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service("operatelogService")
public class OperatelogServiceImpl extends ServiceImpl<OperatelogDao, OperatelogEntity> implements OperatelogService {
    @Override
    public PageUtils queryPage(Map<String, Object> params, Wrapper<OperatelogEntity> wrapper) {
        Page<OperatelogEntity> page = new Query<OperatelogEntity>(params).getPage();
        page = selectPage(page, wrapper);
        return new PageUtils(page);
    }
}
