package com.greatlearning.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.crm.entity.Customer;
import com.greatlearning.crm.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/list")
	public String customerList(Model model) {
		List<Customer> customer = customerService.findAll();
		model.addAttribute("customers", customer);
		return "customerList";
	}

	@RequestMapping("/add_UpdateCustomer")
	public String add_UpdateCustomer(@RequestParam("id") int id, Model model) {
		if (id == 0) {
			Customer customer = new Customer();
			model.addAttribute("customer", customer);
		} else {
			Customer customer = customerService.findbyId(id);
			model.addAttribute("customer", customer);
		}
		return "add_UpdateCustomer";
	}

	@RequestMapping("/save")
	public String save(@RequestParam("id") int id, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("email") String email) {
		Customer customer = new Customer();
		if (id != 0) {
			customer = customerService.findbyId(id);
		}
		customer.setFirstName(firstName);
		customer.setLastName(lastName);
		customer.setEmail(email);
		customerService.save(customer);
		return "redirect:/customer/list";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") int id) {
		customerService.deleteById(id);
		return "redirect:/customer/list";
	}

}
