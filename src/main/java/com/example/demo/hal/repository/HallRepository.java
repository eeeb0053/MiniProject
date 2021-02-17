package com.example.demo.hal.repository;

import com.example.demo.cmm.utl.Pagination;
import com.example.demo.exh.domain.Exhbn;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface HallRepository {
	
	public int insert(Exhbn exbhn);

	public List<Exhbn> selectAll();
	
	public Exhbn selectById(int exbhnNum);

	public int update(Exhbn exbhn);

	public int delete(Exhbn exbhn);

	public int count();
}
