package com.niit.EshoppingBackend1.dao;

import java.util.List;

import com.niit.EshoppingBackend1.dto.Address;
import com.niit.EshoppingBackend1.dto.User;

public interface AddressDAO {

	boolean add(Address address);
	boolean update(Address address);
	
	boolean delete(Address address);
	public Address getAddressByUser(User user);
	
	List<Address> list();
	
	Address get(int addressId);
	
}
