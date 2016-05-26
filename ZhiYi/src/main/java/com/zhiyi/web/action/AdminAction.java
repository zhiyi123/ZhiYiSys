package com.zhiyi.web.action;

import org.apache.logging.log4j.LogManager;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Admin;
import com.zhiyi.service.AdminService;
@Controller("adminAction")
public class AdminAction implements ModelDriven<Admin>{
	@Autowired
	private AdminService adminService;
	@SuppressWarnings("rawtypes")
	@Autowired
	private JsonObject jsonObject;
	private Admin admin;
	private  String page;
	private String rows;

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
	}

	@SuppressWarnings("rawtypes")
	public JsonObject getJsonObject() {
		return jsonObject;
	}
	
	//登录的验证码验证
	public String checkzccode(){
		String code=ServletActionContext.getRequest().getParameter("code");
		jsonObject.setResult(adminService.checkzccode(code));
		return "success";
	}
	
	//管理员登录
	public String managerLogin(){
		jsonObject.setResult(adminService.login(admin));
		return "success";
	}

	//分页查询管理员信息
	@SuppressWarnings("unchecked")
	public String getPageAdminInfo(){
		jsonObject.setTotal(adminService.getTotal());
		jsonObject.setRows(adminService.find(page, rows));
		return "success";
	}

	//添加管理员信息
	public String addAdminInfo(){
		jsonObject.setResult(adminService.addAdmin(admin));
		return "success";
	}

	//删除管理员信息
	public String delAdminInfo(){
		String aids=ServletActionContext.getRequest().getParameter("aids");
		jsonObject.setResult(adminService.delAdminInfo(aids));
		return "success";
	}
	
	//修改管理员信息
	public String updateAdminInfo(){
		LogManager.getLogger().debug(admin);
		jsonObject.setResult(adminService.updateAdminInfo(admin));
		return "success";
	}
	
	@Override
	public Admin getModel() {
		this.admin=new Admin();
		return admin;
	}

}