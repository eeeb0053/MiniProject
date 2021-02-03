package com.example.demo.bkg.service;

import java.util.List;
import java.util.stream.Collectors;
import static java.util.Comparator.comparing;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.cmm.utl.Pagination;

@Service
public class BookingService {
	@Autowired Booking booking;
	@Autowired BookingMapper bookingMapper;

    public List<Booking> list(Pagination page) {
    	return bookingMapper.list().stream()
    			.sorted(comparing(Booking::getBookNum).reversed())
    			.skip(page.getPageSize() * (page.getPageNum()-1))
    			.limit(page.getPageSize())
    			.collect(Collectors.toList());
    }
    public int count() {
        return bookingMapper.count();
    }

    public int update(Booking booking) {
        return bookingMapper.update(booking);
    }
    public int delete(Booking booking) {
        return bookingMapper.delete(booking);
    }
}
