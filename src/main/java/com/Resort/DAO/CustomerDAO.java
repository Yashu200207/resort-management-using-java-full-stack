package com.Resort.DAO;

import java.util.ArrayList;

import com.Resort.DTO.Customer;


public interface CustomerDAO {
	public boolean insertCustomer(Customer c);
	public boolean updateCustomer(Customer c);
	public boolean deleteCustomer(Customer c);
	public Customer getCustomer(String mail,String password);
	public Customer getCustomer(long phone,String mail);
	public ArrayList<Customer>getCustomer();
	public Customer getCustomer(String name);
}
