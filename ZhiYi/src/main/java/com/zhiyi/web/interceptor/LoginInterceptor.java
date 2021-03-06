package com.zhiyi.web.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
/**
 * 用户登录校验拦截器
 * @author qyb
 *
 */
public class LoginInterceptor extends MethodFilterInterceptor{

	private static final long serialVersionUID = 1307687631270550421L;

	@Override
	protected String doIntercept(ActionInvocation invation) throws Exception {
		Map<String,Object> session=ActionContext.getContext().getSession();   //取到session的封装类
		Object obj=session.get("users");
		if(obj == null){
			session.put("errorMsgsss", "请登录后再进行操作...");
			return "fail";
		}
		return invation.invoke();
	}

}
