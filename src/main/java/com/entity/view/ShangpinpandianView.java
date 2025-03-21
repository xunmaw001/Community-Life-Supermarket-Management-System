package com.entity.view;

import com.entity.ShangpinpandianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商品盘点
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-01 16:56:05
 */
@TableName("shangpinpandian")
public class ShangpinpandianView  extends ShangpinpandianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangpinpandianView(){
	}
 
 	public ShangpinpandianView(ShangpinpandianEntity shangpinpandianEntity){
 	try {
			BeanUtils.copyProperties(this, shangpinpandianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
