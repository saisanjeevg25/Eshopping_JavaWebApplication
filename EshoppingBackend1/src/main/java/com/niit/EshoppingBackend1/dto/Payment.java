package com.niit.EshoppingBackend1.dto;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

public class Payment implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int paymentId;
	
	@Email
	private String email;
	@Size(min=1, max=30,message="mobile number should be between 1 to 12 characters long")
	private String phone;
	
	@Size(min=16, max=16,message="card number should be 16 characters long")
//	@CreditCardNumber
	private String cardNo;
	
	@Size(min=3, max=3,message="cvv should be 3 characters long")
	private String cvv;
	
	@Size(min=1, max=20,message="card name should be between 1 to 20 characters long")
	private String cardName;
	
	private int totalPayment=0;
	public int getTotalPayment() {
		return totalPayment;
	}
	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}
	@OneToOne(cascade=CascadeType.ALL)
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	private int mm;
	private int yy;

	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public int getMm() {
		return mm;
	}
	public void setMm(int mm) {
		this.mm = mm;
	}
	public int getYy() {
		return yy;
	}
	public void setYy(int yy) {
		this.yy = yy;
	}
	public Payment(int paymentId, String email, String phone, String cardNo, String cvv, String cardName, int mm,
			int yy) {
		super();
		this.paymentId = paymentId;
		this.email = email;
		this.phone = phone;
		this.cardNo = cardNo;
		this.cvv = cvv;
		this.cardName = cardName;
		this.mm = mm;
		this.yy = yy;
	}
	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}

}
