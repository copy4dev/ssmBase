package com.copy4dev.ssmbase.modules.interfaces;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.copy4dev.ssmbase.common.web.BaseController;
import com.copy4dev.ssmbase.modules.utils.Contants;

@Controller
public class PageService extends BaseController {

	/**
	 * http://192.168.62.141:8080/ssmBase/page/service?test_key=123&method=test
	 */
	@RequestMapping(value = "/page/service", method = RequestMethod.GET)
	public String service(HttpServletRequest request, HttpServletResponse response) {

		try {

			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			// 参数获取
			String testKey = request.getParameter("test_key");
			String method = request.getParameter("method");

			// 参数校验
			if (StringUtils.isBlank(testKey) || !Contants.TEST_KET.equals(testKey)) {
				return null;
			}

			// 测试接口
			if ("test".equals(method)) {
				// 请求地址?查询字符串
				System.out.println("请求地址：" + request.getRequestURL());
				System.out.println("查询字符串：" + request.getQueryString());
				response.sendRedirect("../WEB-INF/index.jsp");
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}
