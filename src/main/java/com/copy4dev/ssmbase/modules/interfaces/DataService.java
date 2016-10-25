package com.copy4dev.ssmbase.modules.interfaces;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.copy4dev.ssmbase.common.web.BaseController;

/**
 * 对奇门开放接口
 * 
 * @author shi
 * @version 2016-08-22
 */
@Controller
public class DataService extends BaseController {

	/**
	 * 接收奇门确认通知接口
	 */
	@RequestMapping(value = "${adminPath}/ssmbase/service", method = RequestMethod.POST)
	public String service(HttpServletRequest request, HttpServletResponse response) {

		boolean flag = false;

		try {

			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			// 校验
			String testKey = request.getParameter("test_key");

			if (testKey == null || !Contants.TEST_KET.equals(testKey)) {

				System.out.println("KEY验证不通过");
				response.getWriter().write(getResponseStr(flag));
			}

			System.out.println("开始接收菜鸟发过来的通知");

			BufferedReader br = request.getReader();
			StringBuilder sb = new StringBuilder();
			String line = null;
			while ((line = br.readLine()) != null) {
				sb.append(line).append("\n");
			}
			String param = sb.toString();

			System.out.println("请求参数：");
			System.out.println(param);

			// 解析
			String method = request.getParameter("method");
			System.out.println(method);

			// 入库单确认接口
			if ("entryorder.confirm".equals(method))
				flag = true;

			// 响应
			response.getWriter().write(getResponseStr(flag));
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
