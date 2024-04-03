package com.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.ChukujiluEntity;
import com.entity.OperatelogEntity;
import com.service.ChukujiluService;
import com.service.OperatelogService;
import com.utils.MPUtil;
import com.utils.PageUtils;
import com.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;


/**
 * 日志记录
 * 后端接口
 * @author 
 * @email 
 * @date 2023-04-12 10:13:58
 */
@RestController
@RequestMapping("/operatelog")
public class OperatelogController {
    @Autowired
    private OperatelogService operatelogService;

    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, OperatelogEntity operatelog, HttpServletRequest request){
        EntityWrapper<ChukujiluEntity> ew = new EntityWrapper<ChukujiluEntity>();
		PageUtils page = operatelogService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, operatelog), params), params));
        return R.ok().put("data", page);
    }

}
