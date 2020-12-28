package com.booking;

public class BookingDTO {

	private int booking_id;
	private String pickup_datetime;
	private String ret_datetime;
	private String pickup_from;
	private String drop_to;
	private String ride_type;
	private int number_of_people;
	private int vehicle;
	private String vehiclename;
	
	
	public int getBooking_id() {
		return booking_id;
	}
	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
	}
	public String getPickup_datetime() {
		return pickup_datetime;
	}
	public void setPickup_datetime(String pickup_datetime) {
		this.pickup_datetime = pickup_datetime;
	}
	public String getRet_datetime() {
		return ret_datetime;
	}
	public void setRet_datetime(String ret_datetime) {
		this.ret_datetime = ret_datetime;
	}
	public String getPickup_from() {
		return pickup_from;
	}
	public void setPickup_from(String pickup_from) {
		this.pickup_from = pickup_from;
	}
	public String getDrop_to() {
		return drop_to;
	}
	public void setDrop_to(String drop_to) {
		this.drop_to = drop_to;
	}
	public String getRide_type() {
		return ride_type;
	}
	public void setRide_type(String ride_type) {
		this.ride_type = ride_type;
	}
	public int getNumber_of_people() {
		return number_of_people;
	}
	public void setNumber_of_people(int number_of_people) {
		this.number_of_people = number_of_people;
	}
	public int getVehicle() {
		return vehicle;
	}
	public void setVehicle(int vehicle) {
		this.vehicle = vehicle;
	}
	public String getVehiclename() {
		return vehiclename;
	}
	public void setVehiclename(String vehiclename) {
		this.vehiclename = vehiclename;
	}
	
	
	
	
	
}
