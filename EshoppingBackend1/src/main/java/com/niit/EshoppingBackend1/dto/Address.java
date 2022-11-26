package com.niit.EshoppingBackend1.dto;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Address implements Serializable {

	private static final long serialVersionUID = 4657462015039726030L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int addressId;
	
	@NotEmpty(message="AddressLine1 cannot be empty")
	private String addressLine1;
	@NotEmpty(message="AddressLine2 cannot be empty")
	private String addressLine2;
	@NotEmpty(message="City cannot be empty")
	private String city;
	@NotEmpty(message="State cannot be empty")
	private String state;
	@NotEmpty(message="Country cannot be empty")
	private String country;
	//private boolean shipping;
	
	
	@ManyToOne(cascade=CascadeType.ALL)
	private User user;
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getAddressLine1() {
		return addressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return addressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	/*
	public boolean isShipping() {
		return shipping;
	}
	public void setShipping(boolean shipping) {
		this.shipping = shipping;
	}*/
	
	
}
