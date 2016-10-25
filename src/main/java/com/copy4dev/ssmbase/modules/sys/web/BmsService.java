package com.copy4dev.ssmbase.modules.sys.web;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.copy4dev.ssmbase.common.web.BaseController;

/**
 * 开放接口
 * 
 * @author shi
 * @version 2016-08-22
 */
@Controller
@RequestMapping(value = "${adminPath}/qimen")
public class BmsService extends BaseController {

	/**
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "service")
	public String service(HttpServletRequest request, HttpServletResponse response) {

		try {

			BufferedReader br = request.getReader();
			StringBuilder sb = new StringBuilder();
			String line = null;
			while ((line = br.readLine()) != null) {
				sb.append(line).append("\n");
			}

			// 解析
			String method = request.getParameter("method");
			boolean flag = false;

			// 入库单确认接口
			if ("1".equals(method))
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
