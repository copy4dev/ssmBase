package com.thinkgem.jeesite.modules.sys.web;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thinkgem.jeesite.common.web.BaseController;

/**
 * 对奇门开放接口
 * 
 * @author shi
 * @version 2016-08-22
 */
@Controller
@RequestMapping(value = "${adminPath}/qimen")
public class BmsService extends BaseController {

	/**
	 * 接收奇门确认通知接口
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "service")
	public String service(HttpServletRequest request, HttpServletResponse response) {

		// http://[erp_webservice_url]?method=[erp_API] &timestamp=[2015-02-01
		// 00:00:00]&format=xml&app_key=[wms_appkey]&v=1.0&sign=[xxxxxxxxxxxxxxxxxxxxxx]&sign_method=md5&customerId=[QIMENUSR1]
		try {

			BufferedReader br = request.getReader();
			StringBuilder sb = new StringBuilder();
			String line = null;
			while ((line = br.readLine()) != null) {
				sb.append(line).append("\n");
			}
			String param = sb.toString();
			System.out.println(param);

			// 解析
			String method = request.getParameter("method");
			boolean flag = false;

			// 入库单确认接口
			if ("entryorder.confirm".equals(method))
				flag = true;

			// 销退入库单确认接口
			if ("returnorder.confirm".equals(method)) {
				System.out.println("销退入库的通告来啦");
				flag = true;
			}

			// 盘点单接收接口
			if ("inventory.report".equals(method)) {
				flag = true;
			}

			// 出库单确认接口
			if ("stockout.confirm".equals(method))
				flag = true;

			// 发货单确认接口
			if ("deliveryorder.confirm".equals(method))
				flag = true;

			// 订单流水通知接口 仓内生产作业状态回传（“仓库接单”，“打印”，“拣货”，“复核”，“打包”）
			if ("taobao.qimen.orderprocess.report".equals(method))
				flag = true;

			// 响应
			return getResponseStr(flag);
		} catch (IOException e) {

			e.printStackTrace();
		}

		return null;
	}

	/**
	 * 响应内容
	 * 
	 * @param flag
	 * @return
	 */
	public String getResponseStr(boolean flag) {

		StringBuffer rsp = new StringBuffer();
		rsp.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
		rsp.append("<response>");
		if (flag)
			rsp.append("<flag>success</flag>"); // success|failure
		else
			rsp.append("<flag>failure</flag>");
		rsp.append("<code></code>"); // 响应码
		rsp.append("<message></message>"); // 响应信息
		rsp.append("</response>");

		return rsp.toString();
	}
}
