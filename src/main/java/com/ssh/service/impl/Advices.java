package com.ssh.service.impl;

import com.ssh.entity.Users;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class Advices {
	//前置通知
	/*@Before("execution(* com.ssh.service..*.*(..))")
	public void beforeMethod(JoinPoint point){
		System.out.println(point.getSignature().getName()+"方法准备执行......");
	}*/

	//前置通知2
	@Before(value="execution(* com.ssh.service..*.doLogin*(..))&&args(user)",argNames="user")
	public void beforeMethod(Users user){
		System.out.println("doLogin方法准备执行......"+user.getUname());
	}


	//后置通知
	@AfterReturning(value="execution(* com.ssh.service..*.*(..))",returning="obj")
	public void afterReturnMethod(JoinPoint point,Object obj){
		System.out.println(point.getSignature().getName()+"方法准备完毕,返回结果是:"+obj.toString());
	}

	//最终通知
	/*@After("execution(* com.ssh.service..*.*(..))")
	public void afterMethod(JoinPoint point){
		System.out.println(point.getSignature().getName()+"方法执行完毕......");
	}*/

	//异常通知
	/*@AfterThrowing(value="execution(* com.ssh.service..*.*(..))",throwing="e")
	public void throwMethod(JoinPoint point,Exception e){
		System.out.println(point.getSignature().getName()+"方法执行发生异常，异常原因:"+e.getMessage());
	}*/

	//环绕通知
	/*@Around("execution(* com.ssh.service..*.*(..))")
	public Object around(ProceedingJoinPoint point){
		System.out.println(point.getSignature().getName()+"环绕start");
		try {
			Object obj=point.proceed();//开始执行
			System.out.println(point.getSignature().getName()+"环绕end,结果是:"+obj);
			return obj;
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return null;
	}*/
}