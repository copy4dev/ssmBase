/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.copy4dev.ssmbase.modules.test.entity;

import org.hibernate.validator.constraints.Length;

import com.copy4dev.ssmbase.common.persistence.DataEntity;

/**
 * 主子表生成Entity
 * @author copy4dev
 * @version 2016-11-03
 */
public class TestDataChild extends DataEntity<TestDataChild> {
	
	private static final long serialVersionUID = 1L;
	private TestDataMain testDataMain;		// 业务主表 父类
	private String name;		// 名称
	
	public TestDataChild() {
		super();
	}

	public TestDataChild(String id){
		super(id);
	}

	public TestDataChild(TestDataMain testDataMain){
		this.testDataMain = testDataMain;
	}

	/** 取得 业务主表 */
	@Length(min=0, max=64, message="业务主表长度必须介于 0 和 64 之间")
	public TestDataMain getTestDataMain() {
		return testDataMain;
	}

	/** 设置 业务主表 */
	public void setTestDataMain(TestDataMain testDataMain) {
		this.testDataMain = testDataMain;
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
	
}