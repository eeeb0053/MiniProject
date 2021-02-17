package com.example.demo.uss.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.cmm.utl.DummyGenerator;
import com.example.demo.uss.domain.User;
import com.example.demo.uss.repository.UserRepository;

@Service
public class UserService {
	@Autowired UserRepository userRepository;
    @Autowired DummyGenerator dummy;

    public int register(User user) {
        return userRepository.insert(user);
    }

	public int insertMany(int count) {
		var list = new ArrayList<User>();
		User m = null;
		for(int i=0; i< count; i++) {
			m = dummy.makeUser();
			list.add(m);
		}
		return userRepository.insertMany(list);
	}
}
