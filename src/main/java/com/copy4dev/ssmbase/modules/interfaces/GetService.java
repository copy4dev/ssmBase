package com.copy4dev.ssmbase.modules.interfaces;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.copy4dev.ssmbase.common.persistence.Page;
import com.copy4dev.ssmbase.common.web.BaseController;
import com.copy4dev.ssmbase.modules.log.entity.ModLog;
import com.copy4dev.ssmbase.modules.log.service.ModLogService;

@Controller
public class GetService extends BaseController {

	private static Logger logger = Logger.getLogger(GetService.class);
	
	@Autowired
	private ModLogService modLogService;

	/**
	 * 静态页面请求<br/>
	 * 访问方式:http://localhost:8080/ssmBase/f/service/test1
	 * 
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "${frontPath}/service/test1", method = RequestMethod.GET)
	public String test1(HttpServletRequest request, HttpServletResponse response, Model model, ModLog modLog) {
		
		Page<ModLog> page = modLogService.findPage(new Page<ModLog>(request, response), modLog); 
		model.addAttribute("page", page);
	
//		System.out.println(	modLogService.findList(new ModLog()).size());
		
		//mobile/modules/模块名/jsp文件名
		String s = "mobile/modules/test/index";
		logger.debug("地址跳转：" + s);
		return s;
	}

}
