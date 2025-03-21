package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 商品盘点
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-01 16:56:05
 */
@TableName("shangpinpandian")
public class ShangpinpandianEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShangpinpandianEntity() {
		
	}
	
	public ShangpinpandianEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 盘点时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date pandianshijian;
	
	/**
	 * 商品名称
	 */
					
	private String shangpinmingcheng;
	
	/**
	 * 商品类型
	 */
					
	private String shangpinleixing;
	
	/**
	 * 实点数量
	 */
					
	private Integer shidianshuliang;
	
	/**
	 * 是否缺货
	 */
					
	private String shifouquehuo;
	
	/**
	 * 是否缺少
	 */
					
	private String shifouqueshao;
	
	/**
	 * 备注
	 */
					
	private String beizhu;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：盘点时间
	 */
	public void setPandianshijian(Date pandianshijian) {
		this.pandianshijian = pandianshijian;
	}
	/**
	 * 获取：盘点时间
	 */
	public Date getPandianshijian() {
		return pandianshijian;
	}
	/**
	 * 设置：商品名称
	 */
	public void setShangpinmingcheng(String shangpinmingcheng) {
		this.shangpinmingcheng = shangpinmingcheng;
	}
	/**
	 * 获取：商品名称
	 */
	public String getShangpinmingcheng() {
		return shangpinmingcheng;
	}
	/**
	 * 设置：商品类型
	 */
	public void setShangpinleixing(String shangpinleixing) {
		this.shangpinleixing = shangpinleixing;
	}
	/**
	 * 获取：商品类型
	 */
	public String getShangpinleixing() {
		return shangpinleixing;
	}
	/**
	 * 设置：实点数量
	 */
	public void setShidianshuliang(Integer shidianshuliang) {
		this.shidianshuliang = shidianshuliang;
	}
	/**
	 * 获取：实点数量
	 */
	public Integer getShidianshuliang() {
		return shidianshuliang;
	}
	/**
	 * 设置：是否缺货
	 */
	public void setShifouquehuo(String shifouquehuo) {
		this.shifouquehuo = shifouquehuo;
	}
	/**
	 * 获取：是否缺货
	 */
	public String getShifouquehuo() {
		return shifouquehuo;
	}
	/**
	 * 设置：是否缺少
	 */
	public void setShifouqueshao(String shifouqueshao) {
		this.shifouqueshao = shifouqueshao;
	}
	/**
	 * 获取：是否缺少
	 */
	public String getShifouqueshao() {
		return shifouqueshao;
	}
	/**
	 * 设置：备注
	 */
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}

}
