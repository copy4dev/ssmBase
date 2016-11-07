/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.copy4dev.ssmbase.modules.log.service;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.copy4dev.ssmbase.common.persistence.Page;
import com.copy4dev.ssmbase.common.service.CrudService;
import com.copy4dev.ssmbase.common.utils.DateUtils;
import com.copy4dev.ssmbase.modules.log.dao.ModLogDao;
import com.copy4dev.ssmbase.modules.log.entity.ModLog;



/**
 * 模块日志Service
 * 
 * @author 1002360
 * @version 2016-11-04
 */
@Service
@Transactional(readOnly = true)
public class ModLogService extends CrudService<ModLogDao, ModLog> {

	public ModLog get(String id) {
		return super.get(id);
	}

	public List<ModLog> findList(ModLog modLog) {
		return super.findList(modLog);
	}

	public Page<ModLog> findPage(Page<ModLog> page, ModLog modLog) {

		// 设置默认时间范围，默认当前月
		if (modLog.getBeginCreateTime() == null) {
			modLog.setBeginCreateTime(DateUtils.setDays(DateUtils.parseDate(DateUtils.getDate()), 1));
		}
		if (modLog.getEndCreateTime() == null) {
			modLog.setEndCreateTime(DateUtils.addMonths(modLog.getBeginCreateTime(), 1));
		}

		page.setOrderBy("createDate desc");

		return super.findPage(page, modLog);
	}

	@Transactional(readOnly = false)
	public void save(ModLog modLog) {
		super.save(modLog);
	}

	@Transactional(readOnly = false)
	public void delete(ModLog modLog) {
		super.delete(modLog);
	}

	/**
	 * 写入日志
	 * @param logType 记录类型 [i=信息;w=警告;e=错误]
	 * @param moduleType 模块类型[1=qq账号;2=qq空间]
	 * @param entityId 实体编号
	 * @param bisId 业务编号
	 * @param notes 摘要
	 * @param msg 信息
	 */
	@Transactional(readOnly = false)
	public void addLog(String logType, String moduleType, String entityId,
			String bisId, String notes, String msg) {

		ModLog modLog =new ModLog();
		modLog.setLogType(logType);
		modLog.setModuleType(moduleType);
		modLog.setEntityId(entityId);
		modLog.setBisId(bisId);
		modLog.setNotes(notes);
		modLog.setMsg(msg);
		modLog.setCreateTime(new Date());
		modLog.setDelFlag("0");
		
		this.save(modLog);
	}
	


}