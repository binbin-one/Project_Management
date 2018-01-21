package com.ssh.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectionUtil {
	public static Connection conn;
	public static Statement stm;
	public static ResultSet rs;
	static {
		try {
			Class.forName(ConfigUtil.getValue("driver"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

 public static Connection getConnection() throws Exception{
	 conn=DriverManager.getConnection(ConfigUtil.getValue("url"),ConfigUtil.getValue("username"),ConfigUtil.getValue("password"));
	 return conn;
 }

 public static void closeAll(Connection conn,Statement stm,ResultSet rs) throws Exception{
	 if(conn!=null){
		 conn.close();
	 }
	 if(stm!=null){
		 stm.close();
	 }
	 if(rs!=null){
		 rs.close();
	 }
 }

 public static void closeAll(Connection conn,Statement stm) throws Exception{
	 if(conn!=null){
		 conn.close();
	 }
	 if(stm!=null){
		 stm.close();
	 }
 }
}

