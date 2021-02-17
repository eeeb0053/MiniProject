package com.example.demo.uss.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.cmm.enm.Messenger;
import com.example.demo.uss.service.User;
import com.example.demo.uss.service.UserMapper;
import com.example.demo.uss.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@RestController
@RequestMapping("/users")
public class UserController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired UserService userService;
    @Autowired UserMapper userMapper;
    

    @PostMapping("")
    public Messenger register(@RequestBody User user) {
        return (userService.register(user) == 1) 
        		? Messenger.SUCCESS 
        		: Messenger.FAILURE;
    }
    
    @PostMapping("/login")
    public User login(@RequestBody User user) {
    	return userMapper.login(user);
    }
}
