package com.example.demo.bkg.domain;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component @Data @AllArgsConstructor @Lazy @NoArgsConstructor
public class Booking {
	private int bookNum, exhbnNum, userNum;
	private String bookDate, totalPrice, bookName, bookEmail, bookPnumber;
}
