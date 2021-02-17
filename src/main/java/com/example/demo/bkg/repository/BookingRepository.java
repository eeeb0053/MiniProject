package com.example.demo.bkg.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.bkg.domain.Booking;

@Repository
public interface BookingRepository {
	public int insert(Booking booking);
	public List<Booking> selectAll();
	public List<Booking> list();
	public int count();
    public Booking selectById(int bookNum);
    public int update(Booking booking);
    public int delete(Booking booking);
}
