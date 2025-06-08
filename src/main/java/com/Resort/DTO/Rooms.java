package com.Resort.DTO;

public class Rooms {
	 private int id;
     private String roomName;
     private double price;
     private boolean availability;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public boolean isAvailability() {
		return availability;
	}
	public void setAvailability(boolean availability) {
		this.availability = availability;
	}
	@Override
	public String toString() {
		return "Rooms [id=" + id + ", roomName=" + roomName + ", price=" + price + ", availability=" + availability
				+ "]";
	}

}
