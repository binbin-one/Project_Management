package com.ssh.util;

import sun.misc.BASE64Encoder;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
	 public static String encrypt(String origStr) throws NoSuchAlgorithmException{
  	 MessageDigest md=MessageDigest.getInstance("md5");
   byte[] buf=md.digest(origStr.getBytes());
   BASE64Encoder encoder=new BASE64Encoder();
   String str=encoder.encode(buf);
   return str;
   }
}
