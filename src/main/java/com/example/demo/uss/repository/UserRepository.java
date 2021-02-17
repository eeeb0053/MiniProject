package com.example.demo.uss.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.uss.domain.User;

@Repository
public interface UserRepository {
    public int insert(User user);
	public User login(User user);
	public int insertMany(List<User> list);
}
