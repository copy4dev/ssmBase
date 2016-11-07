/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.copy4dev.ssmbase.modules.log.dao;

import com.copy4dev.ssmbase.common.persistence.CrudDao;
import com.copy4dev.ssmbase.common.persistence.annotation.MyBatisDao;
import com.copy4dev.ssmbase.modules.log.entity.ModLog;

/**
 * 模块日志DAO接口
 * @author 1002360
 * @version 2016-11-04
 */
@MyBatisDao
public interface ModLogDao extends CrudDao<ModLog> {
	
}