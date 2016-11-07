/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.copy4dev.ssmbase.modules.log.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.copy4dev.ssmbase.common.config.Global;
import com.copy4dev.ssmbase.common.persistence.Page;
import com.copy4dev.ssmbase.common.utils.StringUtils;
import com.copy4dev.ssmbase.common.web.BaseController;
import com.copy4dev.ssmbase.modules.log.entity.ModLog;
import com.copy4dev.ssmbase.modules.log.service.ModLogService;



/**
 * 模块日志Controller
 * @author 1002360
 * @version 2016-11-04
 */
@Controller
@RequestMapping(value = "${adminPath}/log/modLog")
public class ModLogController extends BaseController {

	@Autowired
	private ModLogService modLogService;
	
	@ModelAttribute
	public ModLog get(@RequestParam(required=false) String id) {
		ModLog entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = modLogService.get(id);
		}
		if (entity == null){
			entity = new ModLog();
		}
		return entity;
	}
	
	@RequiresPermissions("log:modLog:view")
	@RequestMapping(value = {"list", ""})
	public String list(ModLog modLog, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ModLog> page = modLogService.findPage(new Page<ModLog>(request, response), modLog); 
		model.addAttribute("page", page);
		return "modules/log/modLogList";
	}

	@RequiresPermissions("log:modLog:view")
	@RequestMapping(value = "form")
	public String form(ModLog modLog, Model model) {
		model.addAttribute("modLog", modLog);
		return "modules/log/modLogForm";
	}

	@RequiresPermissions("log:modLog:edit")
	@RequestMapping(value = "save")
	public String save(ModLog modLog, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, modLog)){
			return form(modLog, model);
		}
		modLogService.save(modLog);
		addMessage(redirectAttributes, "保存模块日志成功");
		return "redirect:"+Global.getAdminPath()+"/log/modLog/?repage";
	}
	
	@RequiresPermissions("log:modLog:edit")
	@RequestMapping(value = "delete")
	public String delete(ModLog modLog, RedirectAttributes redirectAttributes) {
		modLogService.delete(modLog);
		addMessage(redirectAttributes, "删除模块日志成功");
		return "redirect:"+Global.getAdminPath()+"/log/modLog/?repage";
	}

}