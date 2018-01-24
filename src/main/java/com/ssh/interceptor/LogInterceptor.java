package com.ssh.interceptor;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * 写日志操作的拦截器
 * @author Administrator
 *
 */
public class LogInterceptor implements Interceptor{

	private SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	@Override
	public void destroy() {
		System.out.println("-------LogInterceptor销毁-------");
	}

	@Override
	public void init() {
		System.out.println("-------LogInterceptor初始化-------");
	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		//System.out.println("-------LogInterceptor执行拦截-------");
		
		String result=arg0.invoke();//继续向下执行
		
		//System.out.println("执行后返回结果集是:"+result);
		String actionName=arg0.getProxy().getActionName();//获取Action类名
		String methodName=arg0.getProxy().getMethod();
		
		//获取ActionContext对象
		ActionContext ctx=arg0.getInvocationContext();
		System.out.println("[日志二]参数uname="+ctx.getParameters().values());
		System.out.println("[日志二]"+actionName+"执行"+methodName+"方法,"+sdf.format(new Date()));
		
		//Log4J写日志
		//Logger logger=LogManager.getLogger();
		//logger.info("[日志二]"+actionName+"执行"+methodName+"方法,"+sdf.format(new Date()));
		return result;
	}
}




