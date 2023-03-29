package com.tenco.todo.repository;

import java.util.ArrayList;

import com.tenco.todo.dto.TodoDTO;

public interface ITodoRepo {

	ArrayList<TodoDTO> select();
	int insert(String title, String description,int priority,int completed, int category_id);
	int update(String title, String description, int priority, int completed, int category_id,int id);
	int delete(int id);
	
}
