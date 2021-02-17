package com.example.demo.hal.service;

import com.example.demo.cmm.utl.Pagination;
import com.example.demo.exh.domain.Exhbn;
import com.example.demo.exh.repository.ExhbnRepository;

import static java.util.Comparator.comparing;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import static com.example.demo.cmm.utl.Util.*;
import static java.util.stream.Collectors.*;
import static java.util.stream.Collectors.toList;

import java.util.ArrayList;
import java.util.stream.Collectors;


@Service
public class HallService {
	
	@Autowired ExhbnRepository exhbnRepository;
	
	public int add(Exhbn exhbn) {
		return exhbnRepository.insert(exhbn);
	}
	
	public List<Exhbn> list() {
		return exhbnRepository.selectAll();
	}
	    
	public int count() {
		return exhbnRepository.count();
	}
	
    public Exhbn selectById(int exhbnNum) {
    	return exhbnRepository.selectById(exhbnNum);
    }
    
	public int update(Exhbn exhbn) {
		return exhbnRepository.update(exhbn);
	}
	
	public int delete(Exhbn exhbn) {
		return exhbnRepository.delete(exhbn);
	}

}
