package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.ShangpinxinxiEntity;
import com.entity.view.ShangpinxinxiView;
import com.entity.vo.ShangpinxinxiVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 商品信息
 *
 * @author 
 * @email 
 * @date 2023-04-12 10:13:58
 */
public interface ShangpinxinxiService extends IService<ShangpinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinxinxiVO> selectListVO(Wrapper<ShangpinxinxiEntity> wrapper);

   	List<ShangpinxinxiEntity> alarmDeadStock(ShangpinxinxiEntity entity);

   	ShangpinxinxiVO selectVO(@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);
   	
   	List<ShangpinxinxiView> selectListView(Wrapper<ShangpinxinxiEntity> wrapper);
   	
   	ShangpinxinxiView selectView(@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinxinxiEntity> wrapper);

	List<ShangpinxinxiEntity> statistics(ShangpinxinxiEntity shangpinxinxi);
}

