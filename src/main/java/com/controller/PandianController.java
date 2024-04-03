package com.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.PandianEntity;
import com.service.PandianService;
import com.utils.MPUtil;
import com.utils.PageUtils;
import com.utils.R;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;


/**
 * 库存盘点
 * 后端接口
 * @author 
 * @email 
 * @date 2023-05-25 10:13:58
 */
@RestController
@RequestMapping("/pandian")
public class PandianController {
    @Resource
    private PandianService pandianService;
    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, PandianEntity pandian, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("shanghu")) {
			pandian.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<PandianEntity> ew = new EntityWrapper<PandianEntity>();
		PageUtils page = pandianService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, pandian), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,PandianEntity pandian, HttpServletRequest request){
        EntityWrapper<PandianEntity> ew = new EntityWrapper<PandianEntity>();
		PageUtils page = pandianService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, pandian), params), params));
        return R.ok().put("data", page);
    }


    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        PandianEntity pandian = pandianService.selectById(id);
        return R.ok().put("data", pandian);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        PandianEntity pandian = pandianService.selectById(id);
        return R.ok().put("data", pandian);
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody PandianEntity pandian, HttpServletRequest request){
    	pandian.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
        pandianService.insert(pandian);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody PandianEntity pandian, HttpServletRequest request){
    	pandian.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());

        pandianService.insert(pandian);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody PandianEntity pandian, HttpServletRequest request){
        pandianService.updateById(pandian);//全部更新
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        pandianService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }

}
