package com.zhiyi.web.action;


import org.apache.struts2.ServletActionContext;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Users;
import com.zhiyi.service.UsersService;
@Controller("usersAction")
public class UsersAction implements ModelDriven<Users>,SessionAware{
	@Autowired
	private UsersService usersService;
	private JsonObject<Users> jsonObject;
	private Users users;
	private  String page;
	private String rows;
	private Map<String, Object> session;

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
	public JsonObject<Users> getJsonObject() {
		return jsonObject;
	}
	
	//注册时用户名的校验
	public String checkUserName(){
		String pname=ServletActionContext.getRequest().getParameter("uname");
		System.out.println(pname);
		return "success";
	}
	
//	//登录的验证码验证
//	public String checkzccode(){
//		String code=ServletActionContext.getRequest().getParameter("code");
//		jsonObject.setResult(adminService.checkzccode(code));
//		return "success";
//	}
//	
//	//管理员登录
//	public String managerLogin(){
//		jsonObject.setResult(adminService.login(admin));
//		return "success";
//	}

	//分页查询会员信息
	
	public String getPageUsersInfo(){
		jsonObject = usersService.getPageUsersInfo(page, rows);
		return "success";
	}

	//添加会员信息
	public String addUsersInfo(){
		jsonObject=usersService.addUsers(users);
		return "success";
	}
//
	//删除管理员信息
	public String delUsersInfo(){
		String aids=ServletActionContext.getRequest().getParameter("usids");
		jsonObject=usersService.delUsersInfo(aids);
		return "success";
	}
	public String findusersByUsid(){
		jsonObject=usersService.findusersByUsid(users.getUsid());
		return "success";
		
	}
//	
//	//修改管理员信息
//	public String updateAdminInfo(){
//		LogManager.getLogger().debug(admin);
//		jsonObject.setResult(adminService.updateAdminInfo(admin));
//		return "success";
//	}
	
	public String login(){
		System.out.println("你说房贷首付犯得上发射点");
		users=usersService.login(users);
		if(users==null){
			session.put("errorMsg","登录失败，用户名或密码错误");
			return "fail";
		}
		session.put("users", users);
		return "login";
	}

	@Override
	public Users getModel() {
		this.users =new Users();
		return users;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}


	

}
