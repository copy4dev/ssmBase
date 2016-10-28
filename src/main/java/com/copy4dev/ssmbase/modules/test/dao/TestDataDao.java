/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.copy4dev.ssmbase.modules.test.dao;

import com.copy4dev.ssmbase.common.persistence.CrudDao;
import com.copy4dev.ssmbase.common.persistence.annotation.MyBatisDao;
import com.copy4dev.ssmbase.modules.test.entity.TestData;

/**
 * 单表生成DAO接口
 * @author ThinkGem
 * @version 2016-10-28
 */
@MyBatisDao
public interface TestDataDao extends CrudDao<TestData> {
	
}