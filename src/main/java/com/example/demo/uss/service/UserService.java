package com.example.demo.uss.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.cmm.utl.DummyGenerator;

@Service
public class UserService {
	@Autowired UserMapper userMapper;
    @Autowired DummyGenerator dummy;

    public int register(User user) {
        return userMapper.insert(user);
    }

	public int insertMany(int count) {
		var list = new ArrayList<User>();
		User m = null;
		for(int i=0; i< count; i++) {
			m = dummy.makeUser();
			list.add(m);
		}
		return userMapper.insertMany(list);
	}
}
