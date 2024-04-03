package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.ShangpinxinxiEntity;
import com.entity.view.ShangpinxinxiView;
import com.entity.vo.ShangpinxinxiVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 商品信息
 * 
 * @author 
 * @email 
 * @date 2023-04-12 10:13:58
 */
public interface ShangpinxinxiDao extends BaseMapper<ShangpinxinxiEntity> {
	
	List<ShangpinxinxiVO> selectListVO(@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);

	List<ShangpinxinxiEntity> alarmDeadStock(ShangpinxinxiEntity entity);

	ShangpinxinxiVO selectVO(@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);
	
	List<ShangpinxinxiView> selectListView(@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);

	List<ShangpinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);
	
	ShangpinxinxiView selectView(@Param("ew") Wrapper<ShangpinxinxiEntity> wrapper);

	List<ShangpinxinxiEntity> statistics(ShangpinxinxiEntity shangpinxinxi);
}
