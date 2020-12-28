package com.booking;

import java.sql.CallableStatement;
import java.sql.Connection;

import com.util.DBConnectivity;

public class BookingDAO {

	public int addBooking(String dep_date, String ret_date, String pickup, String drop, String type, int people) {
		int result = 0;

		try {

			Connection conn = DBConnectivity.getConnection();
			CallableStatement sproc = conn.prepareCall("call add_booking_entry(?,?,?,?,?)");

			sproc.setString(1,dep_date);
			sproc.setString(2,ret_date);
			sproc.setString(3,pickup);
			sproc.setString(4,drop);
			sproc.setString(5,type);
			sproc.setInt(6, people);
			sproc.executeUpdate();
			result = 1;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}

}
