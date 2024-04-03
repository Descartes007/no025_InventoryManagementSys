package com.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.OperatelogEntity;
import com.entity.ShangpinxinxiEntity;
import com.entity.view.ShangpinxinxiView;
import com.service.OperatelogService;
import com.service.ShangpinxinxiService;
import com.utils.MPUtil;
import com.utils.PageUtils;
import com.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;


/**
 * 商品信息
 * 后端接口
 * @author 
 * @email 
 * @date 2023-04-12 10:13:58
 */
@RestController
@RequestMapping("/shangpinxinxi")
public class ShangpinxinxiController {
    @Autowired
    private ShangpinxinxiService shangpinxinxiService;
    @Autowired
    private OperatelogService operatelogService;
    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShangpinxinxiEntity shangpinxinxi, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("shanghu")) {
			shangpinxinxi.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ShangpinxinxiEntity> ew = new EntityWrapper<ShangpinxinxiEntity>();
		PageUtils page = shangpinxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shangpinxinxi), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 商品预警查询-上下限
     */
    @RequestMapping("/alarmUpOrDown")
    public R alarmUpOrDown(@RequestParam Map<String, Object> params,ShangpinxinxiEntity shangpinxinxi, HttpServletRequest request){
        EntityWrapper<ShangpinxinxiEntity> ew = new EntityWrapper<ShangpinxinxiEntity>();
        ew.le("shangpinshuliang", 5).or().ge("shangpinshuliang", 1000);
		PageUtils page = shangpinxinxiService.queryPage(params, ew);
        return R.ok().put("data", page);
    }

    /**
     * 商品预警查询-滞销
     */
    @RequestMapping("/alarmDeadStock")
    public R alarmDeadStock(ShangpinxinxiEntity shangpinxinxi, HttpServletRequest request){
        List<ShangpinxinxiEntity> list = shangpinxinxiService.alarmDeadStock(shangpinxinxi);
        return R.ok().put("data", list);
    }

    /**
     * 商品统计查询
     */
    @RequestMapping("/statistics")
    public R statistics(ShangpinxinxiEntity shangpinxinxi, HttpServletRequest request){
        List<ShangpinxinxiEntity> list = shangpinxinxiService.statistics(shangpinxinxi);
        return R.ok().put("data", list);
    }

    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShangpinxinxiEntity shangpinxinxi, HttpServletRequest request){
        EntityWrapper<ShangpinxinxiEntity> ew = new EntityWrapper<ShangpinxinxiEntity>();
		PageUtils page = shangpinxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shangpinxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShangpinxinxiEntity shangpinxinxi){
       	EntityWrapper<ShangpinxinxiEntity> ew = new EntityWrapper<ShangpinxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shangpinxinxi, "shangpinxinxi")); 
        return R.ok().put("data", shangpinxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShangpinxinxiEntity shangpinxinxi){
        EntityWrapper< ShangpinxinxiEntity> ew = new EntityWrapper< ShangpinxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shangpinxinxi, "shangpinxinxi")); 
		ShangpinxinxiView shangpinxinxiView =  shangpinxinxiService.selectView(ew);
		return R.ok("查询商品信息成功").put("data", shangpinxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        ShangpinxinxiEntity shangpinxinxi = shangpinxinxiService.selectById(id);
        return R.ok().put("data", shangpinxinxi);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        ShangpinxinxiEntity shangpinxinxi = shangpinxinxiService.selectById(id);
        return R.ok().put("data", shangpinxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShangpinxinxiEntity shangpinxinxi, HttpServletRequest request){
    	shangpinxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shangpinxinxi);

        shangpinxinxi.setShangpinshuliang(0);
        shangpinxinxiService.insert(shangpinxinxi);
        OperatelogEntity operatelog = new OperatelogEntity();
        operatelog.setContent("商品信息保存");
        operatelog.setZhanghao(shangpinxinxi.getZhanghao());
        operatelogService.insert(operatelog);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShangpinxinxiEntity shangpinxinxi, HttpServletRequest request){
    	shangpinxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shangpinxinxi);

        shangpinxinxiService.insert(shangpinxinxi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ShangpinxinxiEntity shangpinxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shangpinxinxi);
        shangpinxinxiService.updateById(shangpinxinxi);//全部更新
        OperatelogEntity operatelog = new OperatelogEntity();
        operatelog.setContent("商品信息修改");
        operatelog.setZhanghao(shangpinxinxi.getZhanghao());
        operatelogService.insert(operatelog);
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shangpinxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }

}
