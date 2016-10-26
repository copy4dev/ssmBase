package com.copy4dev.ssmbase.modules.interfaces;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.copy4dev.ssmbase.common.web.BaseController;
import com.copy4dev.ssmbase.modules.utils.Contants;

@Controller
public class DataService extends BaseController {

	/**
	 * http://192.168.62.141:8180/ssmBase/data/service?test_key=123
	 */
	@RequestMapping(value = "/data/service", method = RequestMethod.POST)
	public String service(HttpServletRequest request, HttpServletResponse response) {

		Map<String, String> resultMap = new HashMap<String, String>();
		boolean flag = false;

		try {

			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			// 参数获取
			String testKey = request.getParameter("test_key");
			String method = request.getParameter("method");

			// 参数校验
			if (StringUtils.isBlank(testKey) || !Contants.TEST_KET.equals(testKey)) {
				resultMap.put("falg", "failure");
				resultMap.put("code", "");
				resultMap.put("message", "参数验证不通过");
				response.getWriter().write(getResponseXML(resultMap));
			}

			// 获取请求主体
			BufferedReader br = request.getReader();
			StringBuilder sb = new StringBuilder();
			String line = null;
			while ((line = br.readLine()) != null) {
				sb.append(line).append("\n");
			}
			String param = sb.toString();

			// 测试接口
			if ("test".equals(method)) {
				//请求地址?查询字符串
				System.out.println("请求地址：\n"+request.getRequestURL());
				System.out.println("查询字符串：\n"+request.getQueryString());
				System.out.println("请求主体：\n"+param);
				flag = true;
			}

			// 响应
			if (flag) {
				resultMap.put("falg", "success");
				resultMap.put("code", "");
				resultMap.put("message", "");
			} else {
				resultMap.put("falg", "failure");
				resultMap.put("code", "xxx");
				resultMap.put("message", "error msg");
			}
			response.getWriter().write(getResponseJson(resultMap));// 响应

		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 响应内容:XML
	 * 
	 * @param resultMap
	 * @return
	 */
	public String getResponseXML(Map<String, String> resultMap) {

		StringBuffer rsp = new StringBuffer();
		rsp.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
		rsp.append("<response>");

		// success|failure
		rsp.append("<flag>");
		rsp.append(resultMap.get("falg"));
		rsp.append("</flag>");

		// 响应码
		rsp.append("<code>");
		rsp.append(resultMap.get("code"));
		rsp.append("</code>");

		// 响应信息
		rsp.append("<message>");
		rsp.append(resultMap.get("message"));
		rsp.append("</message>");

		rsp.append("</response>");
		return rsp.toString();
	}

	/**
	 * 响应内容:Json
	 * 
	 * @param resultMap
	 * @return
	 */
	public String getResponseJson(Map<String, String> resultMap) {
		JSONObject json = JSONObject.fromObject(resultMap);
		return json.toString();
	}

}
