package com.niit.EshoppingBackend1.dao;

import java.util.List;

import com.niit.EshoppingBackend1.dto.Category;

public interface CategoryDAO {
	
	
	
	public boolean add(Category category);
	public boolean update(Category category);
	public List<Category> list();
	void delete(int id);

    public Category get(int id);
    
}
