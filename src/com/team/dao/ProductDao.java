package com.team.dao;

import java.util.List;

public interface ProductDao<T> {
	List<T> getAll();

	T get(String keyword);
	
	T get(int id);

	void insert(T t);

	void edit(T t);

	void delete(int id);

	List<T> searchByName(String keyword);
}
