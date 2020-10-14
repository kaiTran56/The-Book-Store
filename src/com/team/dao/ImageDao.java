package com.team.dao;

import java.util.List;

public interface ImageDao<T> {
	List<T> getAll();

	T get(int id);

	void insert(T t);

	void delete(int id);

	void edit(T t);

}