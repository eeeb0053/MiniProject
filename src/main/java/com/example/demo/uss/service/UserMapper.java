package com.example.demo.uss.service;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    public int insert(User user);
	public User login(User user);
	public int insertMany(List<User> list);
}
