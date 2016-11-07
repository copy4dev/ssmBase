package com.copy4dev.ssmbase.modules.interfaces;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.copy4dev.ssmbase.common.web.BaseController;
import com.copy4dev.ssmbase.modules.utils.Contants;

@Controller
public class GetService extends BaseController {

	private static Logger logger = Logger.getLogger(GetService.class);

	/**
	 * 192.168.62.141:8080/ssmBase/f/service?test_key=123&method=test
	 */
	@RequestMapping(value = "${frontPath}/service", method = RequestMethod.GET)
	public String service(HttpServletRequest request, HttpServletResponse response, Model model) {

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
				logger.debug("请求地址：" + request.getRequestURL());
				logger.debug("查询字符串：" + request.getQueryString());
				// 页面跳转
				// response.sendRedirect("/ssmBase/page/index.jsp");
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	//http://localhost:8080/ssmBase/f/service2
	@RequestMapping(value = "${frontPath}/service2", method = RequestMethod.GET)
	public String service2(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "/ssmBase/WEB-INF/index.jsp";
	}
	
	

}
