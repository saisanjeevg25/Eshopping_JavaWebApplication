package com.niit.EshoppingBackend1.dao;

import java.util.List;

import com.niit.EshoppingBackend1.dto.Address;
import com.niit.EshoppingBackend1.dto.User;

public interface UserDAO {

	public boolean add(User user);

	public boolean update(User user);

	public boolean delete(User user);

	public List<User> list();

	public User getUserByUsername(String username);
	
	public boolean addUserAddress(Address address);
	
	User get(int id);

}
