package com.example.demo.rev.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.rev.domain.Review;

@Repository
public interface ReviewRepository {

	public List<Review> selectAll();

	public int insert(Review review);

	public int update(Review review);

	public int delete(Review review);

	public int count();

	public Review selectById(int reviewNum);

}
