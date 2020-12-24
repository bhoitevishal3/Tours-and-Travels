package com.util;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectionUtil {
	public static void close(ResultSet rs){
		try{
			if(rs!=null)
				rs.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
public static void close(PreparedStatement ps){
	try{
		if(ps!=null)
			ps.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	}
public static void close(CallableStatement cs){
	try{
		if(cs!=null)
			cs.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
}
public static void close(Statement cs){
	try{
		if(cs!=null)
			cs.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
}
}