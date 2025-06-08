package com.Resort.DTO;

import java.security.Timestamp;

public class Booking {
	 private int id;
     private String fullName;
     private String checkIn;
     private String checkOut;
     private String roomType;
     private Timestamp createdAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public Timestamp getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
	@Override
	public String toString() {
		return "Booking [id=" + id + ", fullName=" + fullName + ", checkIn=" + checkIn + ", checkOut=" + checkOut
				+ ", roomType=" + roomType + ", createdAt=" + createdAt + "]";
	}

}
