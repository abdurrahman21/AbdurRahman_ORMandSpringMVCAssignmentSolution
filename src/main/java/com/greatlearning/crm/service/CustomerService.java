package com.greatlearning.crm.service;

import java.util.List;

import com.greatlearning.crm.entity.Customer;

public interface CustomerService {
	
	public List<Customer> findAll();
	
	public Customer findbyId(int id);
	
	public void save(Customer customer);
	
	public void deleteById(int id);

}
