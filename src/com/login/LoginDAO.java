package com.login;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import com.util.DBConnectivity;

public class LoginDAO {
		Connection conn;
		CallableStatement sproc;
		ResultSet rs;
		public boolean Login(String username, String password)
		{		
			try
			{
				conn = DBConnectivity.getConnection();
				sproc = conn.prepareCall("call login(?,?)");
				
				sproc.setString(1, username);
				sproc.setString(2, password);
				
				rs = sproc.executeQuery();
				
				if(rs.next())
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return false;
		}
}
