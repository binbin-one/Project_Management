package com.ssh.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/**
 * 验证调用Action方法前是否已经登录的拦截器
 * @author Administrator
 *
 */
public class LoginInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		//获取会话对象
		ActionContext ctx=arg0.getInvocationContext();
		Map session=ctx.getSession();//获取存放会话数据的Map集合
		
		//从会话中取出名称为loginName的数据
		String loginName=(String)session.get("loginName");
		if(loginName==null||loginName.length()==0){
			ActionContext.getContext().put("message", "请先登录!");
			return "login";
		}else{
			String result=arg0.invoke();
			return result;
		}
	}
}





