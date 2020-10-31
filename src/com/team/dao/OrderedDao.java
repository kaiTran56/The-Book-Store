package com.team.dao;

import java.util.List;

public interface OrderedDao<T> {
	List<T> getAll();

	T get(int id);

	void insert(T t);

	void edit(T t);

	void delete(String id);
}
