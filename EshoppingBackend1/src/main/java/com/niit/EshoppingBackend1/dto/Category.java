package com.niit.EshoppingBackend1.dto;



import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonBackReference;


@Entity
public class Category implements Serializable{
	
	
/*
	 * private fields
	 */
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;

@NotNull(message="name required")
@Size(min=4,max=25)
private String name;

@NotNull(message="description of product is required")
@Size(min=1,max=80)
private String description;

@Column(name="image_url")
private String imageURL;

@Transient
private MultipartFile file;

public MultipartFile getFile() {
	return file;
}
public void setFile(MultipartFile file) {
	this.file = file;
}


@Column(name="is_active")
private boolean active=true;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getImageURL() {
	return imageURL;
}
public void setImageURL(String imageURL) {
	this.imageURL = imageURL;
}
public boolean isActive() {
	return active;
}
public void setActive(boolean active) {
	this.active = active;
}
@Override
public String toString() {
	return "Category [id=" + id + ", name=" + name + ", description=" + description + ", imageURL=" + imageURL
			+ ", active=" + active + "]";
}

	
}
