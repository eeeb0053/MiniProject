package com.example.demo.rev.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.rev.domain.Review;
import com.example.demo.rev.repository.ReviewRepository;

@Service
public class ReviewService {
	@Autowired ReviewRepository reviewRepository;
	
	public int write(Review review) {
		return reviewRepository.insert(review);
	}

	public List<Review> list() {
		return reviewRepository.selectAll();
	}

	public int count() {
		return reviewRepository.count();
	}
	
	public Review selectById(int reviewNum) {
		return reviewRepository.selectById(reviewNum);
	}

	public int update(Review review) {
		return reviewRepository.update(review);
	}
	
	public int delete(Review review) {
		return reviewRepository.delete(review);
	}
	
}
