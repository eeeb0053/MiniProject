package com.example.demo.bkg.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.bkg.service.Booking;
import com.example.demo.bkg.service.BookingMapper;
import com.example.demo.bkg.service.BookingService;
import com.example.demo.cmm.enm.Messenger;
import com.example.demo.cmm.utl.Pagination;
import static com.example.demo.cmm.utl.Util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@RestController
@RequestMapping("/bookings")
public class BookingController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired BookingService bookingService;
    @Autowired BookingMapper bookingMapper;
    
    @PostMapping("")
    public Messenger add(@RequestBody Booking booking){
        logger.info("==============예매정보: "+booking.toString());
        return bookingMapper.insert(booking) == 1 ? Messenger.SUCCESS : Messenger.FAILURE;
    }
    @GetMapping("/list/{pageSize}/{pageNum}")
    public Map<?, ?> list(@PathVariable String pageSize, 
    					@PathVariable String pageNum){
    	logger.info("Booking List Execute ...");
    	var map = new HashMap<String, Object>();
    	var page = new Pagination(
				integer.apply(pageSize),
				integer.apply(pageNum),
				bookingMapper.count());
    	map.put("list", bookingService.list(page));
    	map.put("page", page);
        return map;
    }
    @GetMapping("/{bookNum}")
    public Booking detail(@PathVariable int bookNum){
        return bookingMapper.selectById(bookNum);
    }
    @PutMapping("")
    public Map<?,?> update(@RequestBody Booking booking){
    	var map = new HashMap<>();
        map.put("message", (bookingService.update(booking) == 1) ? "SUCCESS" : "FAILURE");
        return map;
    }
    @DeleteMapping("")
    public Map<?,?> delete(@RequestBody Booking booking){
    	var map = new HashMap<>();
        map.put("message", (bookingService.delete(booking) == 1) ? "SUCCESS" : "FAILURE");
        return map;
    }
}
