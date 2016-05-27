package com.zhiyi.web.action;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Gtype;
import com.zhiyi.service.GtypeService;
import com.zhiyi.util.UploadUtil;

@Controller("gtypeAction")
public class GtypeAction implements ModelDriven<Gtype>{
	@Autowired
	private GtypeService gtypeService;
	private JsonObject<Gtype> jsonObject;
	private UploadUtil uploadUtil;
	private Gtype gtype;
	private  String page;
	private String rows;

	public UploadUtil getUploadUtil() {
		return uploadUtil;
	}

	public void setUploadUtil(UploadUtil uploadUtil) {
		this.uploadUtil = uploadUtil;
	}

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

	public JsonObject<Gtype> getJsonObject() {
		return jsonObject;
	}

	//分页查询商品序列信息信息
	public String getPageTypeInfo(){
		jsonObject =gtypeService.getPageTypeInfo(page, rows);
		return "success";
	}
	
	//添加商品序列信息
	public String addGtypeInfo(){
		LogManager.getLogger().debug(gtype.toString());
		System.out.println();
		LogManager.getLogger().debug(uploadUtil.toString());
		
		gtype.setTpath(uploadUtil.upload());
		jsonObject=gtypeService.addGtypeInfo(gtype);
		return "success";
	}

	@Override
	public Gtype getModel() {
		this.gtype=new Gtype();
		return gtype;
	}

}
