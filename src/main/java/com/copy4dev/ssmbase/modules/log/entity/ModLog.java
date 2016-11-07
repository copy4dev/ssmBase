/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.copy4dev.ssmbase.modules.log.entity;

import java.util.Date;

import org.hibernate.validator.constraints.Length;

import com.copy4dev.ssmbase.common.persistence.DataEntity;
import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 模块日志Entity
 * @author 1002360
 * @version 2016-11-04
 */
public class ModLog extends DataEntity<ModLog> {
	
	private static final long serialVersionUID = 1L;
	private String logType;		// 记录类型[i,w,e]
	private String moduleType;		// 模块类型
	private String entityId;		// 实体编号
	private String bisId;		// 业务编号
	private String notes;		// 摘要
	private String msg;		// 信息
	private Date createTime;		// 生成时间
	private Date beginCreateTime;		// 开始 生成时间
	private Date endCreateTime;		// 结束 生成时间
	
	public ModLog() {
		super();
	}

	public ModLog(String id){
		super(id);
	}

	/** 取得 记录类型[i,w,e] */
	@Length(min=0, max=1, message="记录类型[i,w,e]长度必须介于 0 和 1 之间")
	public String getLogType() {
		return logType;
	}

	/** 设置 记录类型[i,w,e] */
	public void setLogType(String logType) {
		this.logType = logType;
	}
	
	/** 取得 模块类型 */
	@Length(min=0, max=2, message="模块类型长度必须介于 0 和 2 之间")
	public String getModuleType() {
		return moduleType;
	}

	/** 设置 模块类型 */
	public void setModuleType(String moduleType) {
		this.moduleType = moduleType;
	}
	
	/** 取得 实体编号 */
	@Length(min=0, max=50, message="实体编号长度必须介于 0 和 50 之间")
	public String getEntityId() {
		return entityId;
	}

	/** 设置 实体编号 */
	public void setEntityId(String entityId) {
		this.entityId = entityId;
	}
	
	/** 取得 业务编号 */
	@Length(min=0, max=50, message="业务编号长度必须介于 0 和 50 之间")
	public String getBisId() {
		return bisId;
	}

	/** 设置 业务编号 */
	public void setBisId(String bisId) {
		this.bisId = bisId;
	}
	
	/** 取得 摘要 */
	@Length(min=0, max=100, message="摘要长度必须介于 0 和 100 之间")
	public String getNotes() {
		return notes;
	}

	/** 设置 摘要 */
	public void setNotes(String notes) {
		this.notes = notes;
	}
	
	/** 取得 信息 */
	@Length(min=0, max=1000, message="信息长度必须介于 0 和 1000 之间")
	public String getMsg() {
		return msg;
	}

	/** 设置 信息 */
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	/** 取得 生成时间 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getCreateTime() {
		return createTime;
	}

	/** 设置 生成时间 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	

	/** 取得 生成时间 查询起始点 */
	public Date getBeginCreateTime() {
		return beginCreateTime;
	}

	/** 设置 生成时间 查询结束点 */
	public void setBeginCreateTime(Date beginCreateTime) {
		this.beginCreateTime = beginCreateTime;
	}

	/** 取得 生成时间 查询起始点 */
	public Date getEndCreateTime() {
		return endCreateTime;
	}

	/** 设置 生成时间 查询结束点 */
	public void setEndCreateTime(Date endCreateTime) {
		this.endCreateTime = endCreateTime;
	}
		
}