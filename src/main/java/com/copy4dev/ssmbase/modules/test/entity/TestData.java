/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.copy4dev.ssmbase.modules.test.entity;


import java.util.Date;

import org.hibernate.validator.constraints.Length;

import com.copy4dev.ssmbase.common.persistence.DataEntity;
import com.copy4dev.ssmbase.modules.sys.entity.Area;
import com.copy4dev.ssmbase.modules.sys.entity.Office;
import com.copy4dev.ssmbase.modules.sys.entity.User;
import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 单表生成Entity
 * @author ThinkGem
 * @version 2016-10-28
 */
public class TestData extends DataEntity<TestData> {
	
	private static final long serialVersionUID = 1L;
	private User user;		// 归属用户
	private Office office;		// 归属部门
	private Area area;		// 归属区域
	private String name;		// 名称
	private String sex;		// 性别
	private Date inDate;		// 加入日期
	private Date beginInDate;		// 开始 加入日期
	private Date endInDate;		// 结束 加入日期
	
	public TestData() {
		super();
	}

	public TestData(String id){
		super(id);
	}

	/** 取得 归属用户 */
	public User getUser() {
		return user;
	}

	/** 设置 归属用户 */
	public void setUser(User user) {
		this.user = user;
	}
	
	/** 取得 归属部门 */
	public Office getOffice() {
		return office;
	}

	/** 设置 归属部门 */
	public void setOffice(Office office) {
		this.office = office;
	}
	
	/** 取得 归属区域 */
	public Area getArea() {
		return area;
	}

	/** 设置 归属区域 */
	public void setArea(Area area) {
		this.area = area;
	}
	
	/** 取得 名称 */
	@Length(min=0, max=100, message="名称长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	/** 设置 名称 */
	public void setName(String name) {
		this.name = name;
	}
	
	/** 取得 性别 */
	@Length(min=0, max=1, message="性别长度必须介于 0 和 1 之间")
	public String getSex() {
		return sex;
	}

	/** 设置 性别 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	/** 取得 加入日期 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getInDate() {
		return inDate;
	}

	/** 设置 加入日期 */
	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}
	

	/** 取得 加入日期 查询起始点 */
	public Date getBeginInDate() {
		return beginInDate;
	}

	/** 设置 加入日期 查询结束点 */
	public void setBeginInDate(Date beginInDate) {
		this.beginInDate = beginInDate;
	}

	/** 取得 加入日期 查询起始点 */
	public Date getEndInDate() {
		return endInDate;
	}

	/** 设置 加入日期 查询结束点 */
	public void setEndInDate(Date endInDate) {
		this.endInDate = endInDate;
	}
		
}