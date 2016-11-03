/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.copy4dev.ssmbase.modules.test.dao;

import com.copy4dev.ssmbase.common.persistence.TreeDao;
import com.copy4dev.ssmbase.common.persistence.annotation.MyBatisDao;
import com.copy4dev.ssmbase.modules.test.entity.TestTree;

/**
 * 树结构生成DAO接口
 * @author copy4dev
 * @version 2016-11-03
 */
@MyBatisDao
public interface TestTreeDao extends TreeDao<TestTree> {
	
}