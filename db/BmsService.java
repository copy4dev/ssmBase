package com.thinkgem.jeesite.modules.qm.res;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.bms.service.BmsCkInventoryService;
import com.thinkgem.jeesite.modules.bms.service.BmsEntryorderService;
import com.thinkgem.jeesite.modules.bms.service.BmsOmOrderService;
import com.thinkgem.jeesite.modules.bms.service.BmsOutorderService;
import com.thinkgem.jeesite.modules.bms.service.BmsRtnOrderService;
import com.thinkgem.jeesite.modules.log.service.BmsLogService;
import com.thinkgem.jeesite.modules.qm.util.Contants;
import com.thinkgem.jeesite.modules.qr.service.BmsQrDeliveryService;

/**
 * 对奇门开放接口
 * 
 * @author shi
 * @version 2016-08-22
 */
@Controller
public class BmsService extends BaseController {

	@Autowired
	private BmsEntryorderService bmsEntryorderService;

	@Autowired
	private BmsRtnOrderService bmsRtnOrderService;
	
	@Autowired
	private BmsCkInventoryService bmsCkInventoryService;

	@Autowired
	private BmsOutorderService bmsOutorderService;
	
	@Autowired
	private BmsOmOrderService bmsOmOrderService;
	
	@Autowired
	private BmsQrDeliveryService bmsQrDeliveryService;
	
	@Autowired
	private BmsLogService bmsLogService;//日志管理
	 
	/**
	 * 接收奇门确认通知接口
	 */
	@RequestMapping(value = "${adminPath}/qimen/service", method = RequestMethod.POST)
	public String service(HttpServletRequest request, HttpServletResponse response) {
		
		boolean flag = false;
		
		// http://[erp_webservice_url]?method=[erp_API] &timestamp=[2015-02-01
		// 00:00:00]&format=xml&app_key=[wms_appkey]&v=1.0&sign=[xxxxxxxxxxxxxxxxxxxxxx]&sign_method=md5&customerId=[QIMENUSR1]
		try {
			
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding( "utf-8" );			
			
			//校验
			String app_key = request.getParameter("app_key");
			String customerId = request.getParameter("customerId");
			
			if(app_key == null || customerId ==null || !Contants.WMS_APP_KEY.equals(app_key) || !Contants.QIMEN_CUSTOMER_ID.equals(customerId)){
				
				System.out.println("=================验签不通过        "+app_key+"         "+customerId);
				bmsLogService.addLog("1", "10", "", "", "接收菜鸟通知验签不通过", "app_key:"+app_key+",customerId:"+customerId);
				response.getWriter().write(getResponseStr(flag));
			}
			
			System.out.println("=================开始接收菜鸟发过来的通知        "+app_key+"         "+customerId);

			BufferedReader br = request.getReader();
			StringBuilder sb = new StringBuilder();
			String line = null;
			while ((line = br.readLine()) != null) {
				sb.append(line).append("\n");
			}
			String param = sb.toString();
			
			System.out.println("=================菜鸟发过来的请求参数：");
			System.out.println(param);

			//解析
			String method = request.getParameter("method");
			System.out.println(method);			

			//入库单确认接口
			if ("entryorder.confirm".equals(method))
				flag = bmsEntryorderService.entryOrderNotify(param);
			
			//出库单确认接口
			if ("stockout.confirm".equals(method))
				flag = bmsOutorderService.outOrderNotify(param);
			
			//发货单确认接口，回写物流信息给管易
			if ("deliveryorder.confirm".equals(method))
				flag = bmsOmOrderService.deliveryOrderNotify(param);
			
			//订单流水通知接口 仓内生产作业状态回传（“仓库接单”，“打印”，“拣货”，“复核”，“打包”）
			if ("orderprocess.report".equals(method))
				flag = bmsOmOrderService.orderProcessReport(param);

			//销退入库单确认接口
			if ("returnorder.confirm".equals(method)) {
				System.out.println("-------returnorder start---------");
				flag = bmsRtnOrderService.analysisXml(param);
				System.out.println("-------returnorder end---------");
			}
			
			//盘点单接收接口
			if ("inventory.report".equals(method)) {
				System.out.println("-------inventory start---------");
				flag = bmsCkInventoryService.analysisXml(param);
				System.out.println("-------inventory end---------");
			}

			//响应			
			response.getWriter().write(getResponseStr(flag));
		} catch (IOException e) {
			e.printStackTrace();
			bmsLogService.addLog("2", "10", "", "", "接收菜鸟通知异常", e.getMessage());
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
			rsp.append("<flag>success</flag>"); //success|failure
		else
			rsp.append("<flag>failure</flag>");
		rsp.append("<code></code>"); //响应码
		rsp.append("<message></message>"); //响应信息
		rsp.append("</response>");

		return rsp.toString();
	}
}
