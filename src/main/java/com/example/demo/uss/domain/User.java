package com.example.demo.uss.domain;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component @Data @AllArgsConstructor @Lazy @NoArgsConstructor
public class User {
	private int userNum;
	private String userid, password, username, email, gender, birthday, phoneNumber, admin;
}
