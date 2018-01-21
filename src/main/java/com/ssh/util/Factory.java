package com.ssh.util;

public class Factory {
    public static Object getInstance(String type){
    	String className= ConfigUtil.getValue(type);
    	try {
			Class clazz=Class.forName(className);
			Object obj=clazz.newInstance();
			return obj;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
    }
    
}
