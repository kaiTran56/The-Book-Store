package com.team.dao;

import java.util.List;

public interface TransactionDao<T> {
	List<T> getAll();
	
	T get(int id);

	void insert(T t);

	void edit(T t);

	void delete(int id);

}
