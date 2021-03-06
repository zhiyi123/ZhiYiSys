package com.zhiyi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Gtype;
import com.zhiyi.service.GtypeService;
import com.zhiyi.util.UploadUtil;

@Controller("gtypeAction")
public class GtypeAction implements ModelDriven<Gtype>,SessionAware{
	@Autowired
	private GtypeService gtypeService;
	private JsonObject<Gtype> jsonObject;
	private List<Gtype> types;
	private UploadUtil uploadUtil;
	private Gtype gtype;
	private  String page;
	private String rows;
	private Map<String, Object> session;

	public List<Gtype> getTypes() {
		return types;
	}

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
		gtype.setTpath(uploadUtil.upload());
		jsonObject=gtypeService.addGtypeInfo(gtype);
		return "success";
	}

	//删除商城序列信息
	public String delGtypeInfo(){
		String tids=ServletActionContext.getRequest().getParameter("tids");
		jsonObject=gtypeService.delGtypeInfo(tids);
		return "success";
	}
	
	//根据id查询对应的商品序列信息
	public String findGtypeByTid(){
		jsonObject=gtypeService.findGtypeByTid(gtype.getTid());
		return "success";
	}
	
	//修改
	public String updateGtypeInfo(){
		gtype.setTpath(uploadUtil.upload());
		LogManager.getLogger().debug(gtype);
		jsonObject=gtypeService.updateGtypeInfo(gtype);
		return "success";
	}
	
	//查找所有商品序列编号和名称
	public String getAllGoodsType(){
		jsonObject=gtypeService.getAllGoodsType();
		return "success";
	}
	public String findAllType(){
		types=gtypeService.findTypes();
		session.put("types",types);
		return "findTtpes";
	}
	
	@Override
	public Gtype getModel() {
		this.gtype=new Gtype();
		return gtype;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
}
