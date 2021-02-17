package com.example.demo.rev.domain;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data @Lazy @AllArgsConstructor @NoArgsConstructor
public class Review {
	private int reviewNum, exhbnNum, userNum;
	private String reviewTitle, reviewContent, regDate, score;
}
/*
create table boards(
   board_num int primary key auto_increment,
   title varchar(30),
   content varchar(300),
   date varchar(20),
   id varchar(20)
   );*/