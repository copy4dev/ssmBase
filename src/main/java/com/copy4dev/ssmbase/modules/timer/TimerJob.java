package com.copy4dev.ssmbase.modules.timer;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.copy4dev.ssmbase.common.db.DynamicDataSource;
import com.copy4dev.ssmbase.modules.sys.service.DictService;
import com.copy4dev.ssmbase.modules.utils.HttpPostUtils;

/**
 * 定时任务示例
 */
@Component
public class TimerJob {

	@Autowired
	private DictService dictService;

	@Scheduled(cron = "*/10 * 0 * * ?")
	public void test() {

		System.out.println("=======定时任务示例=======");

		httpPostTest(false);

		chDBTest(false);
	}

	/**
	 * 数据源切换例子
	 * 
	 * @param isRun
	 */
	private void chDBTest(boolean isRun) {
		if (!isRun)
			return;
		// 切换数据源dataSource2nd
		DynamicDataSource.setCurrentLookupKey("dataSource2nd");

		System.out.println("=======你的业务=======");

		// 切换回默认数据源dataSourceDef
		DynamicDataSource.setCurrentLookupKey("dataSourceDef");

	}

	/**
	 * http测试
	 * 
	 * @param isRun
	 */
	private void httpPostTest(boolean isRun) {
		if (!isRun)
			return;

		// http://192.168.62.141:8180/ssmBase/data/service?test_key=123&method=test
		String url = "http://192.168.62.141:8180/ssmBase/data/service";
		Map<String, String> parametersMap = new HashMap<String, String>();
		parametersMap.put("test_key", "123");
		parametersMap.put("method", "test");

		// 提交数据
		String result = HttpPostUtils.excuteRequest(url, parametersMap);

		System.out.println("result:\n" + result);
	}
}
