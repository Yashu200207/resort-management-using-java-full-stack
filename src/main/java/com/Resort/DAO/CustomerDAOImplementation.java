package com.Resort.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Resort.Connection.Connector;
import com.Resort.DTO.Customer;


public class CustomerDAOImplementation  implements CustomerDAO{
	private Connection con;
	public CustomerDAOImplementation() {
		this.con=Connector.requestConnection();
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean insertCustomer(Customer c) {
		// TODO Auto-generated method stub
		String query="INSERT INTO STUDENT VALUES(0,?,?,?,?,SYSDATE())";
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, c.getName());
			ps.setLong(2, c.getPhone());
			ps.setString(3, c.getMail());
			
			ps.setString(6, c.getPassword());
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(i>0) {
		return true;
		}
		else {
			return false;
		}
	}

	@Override
	public boolean updateCustomer(Customer c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteCustomer(Customer c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Customer getCustomer(String mail, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer getCustomer(long phone, String mail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Customer> getCustomer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer getCustomer(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
