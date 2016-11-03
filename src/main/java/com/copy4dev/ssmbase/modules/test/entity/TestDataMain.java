/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.copy4dev.ssmbase.modules.test.entity;

import java.util.Date;
import java.util.List;

import org.hibernate.validator.constraints.Length;

import com.copy4dev.ssmbase.common.persistence.DataEntity;
import com.copy4dev.ssmbase.modules.sys.entity.Area;
import com.copy4dev.ssmbase.modules.sys.entity.Office;
import com.copy4dev.ssmbase.modules.sys.entity.User;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.google.common.collect.Lists;

/**
 * 主子表生成Entity
 * @author copy4dev
 * @version 2016-11-03
 */
public class TestDataMain extends DataEntity<TestDataMain> {

	private static final long serialVersionUID = 1L;
	private User user; // 归属用户
	private Office office; // 归属部门
	private Area area; // 归属区域
	private String name; // 名称
	private String sex; // 性别
	private Date inDate; // 加入日期
	private List<TestDataChild> testDataChildList = Lists.newArrayList(); // 子表列表

	public TestDataMain() {
		super();
	}

	public TestDataMain(String id) {
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
	@Length(min = 0, max = 100, message = "名称长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	/** 设置 名称 */
	public void setName(String name) {
		this.name = name;
	}

	/** 取得 性别 */
	@Length(min = 0, max = 1, message = "性别长度必须介于 0 和 1 之间")
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

	/** 取得子表 业务数据子表 */
	public List<TestDataChild> getTestDataChildList() {
		return testDataChildList;
	}

	/** 设置子表 业务数据子表 */
	public void setTestDataChildList(List<TestDataChild> testDataChildList) {
		this.testDataChildList = testDataChildList;
	}
}