package com.copy4dev.ssmbase.modules.timer;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * 定时任务示例
 */
@Component
public class TimerJob {

	@Scheduled(cron="0 0 0/1 * * ?")
	public void test() {

		System.out.println("=======定时任务示例=======");
	}
}
