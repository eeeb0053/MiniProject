package com.example.demo.rev.controller;

import java.util.HashMap;
import java.util.List;
import static com.example.demo.cmm.utl.Util.string;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.cmm.domain.Messenger;
import com.example.demo.cmm.utl.Pagination;
import com.example.demo.rev.domain.Review;
import com.example.demo.rev.repository.ReviewRepository;
import com.example.demo.rev.service.ReviewService;

@RestController
@RequestMapping("/reviews")
public class ReviewController {
		private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired ReviewService reviewService;
	@Autowired Pagination page;
	@Autowired ReviewRepository reviewRepository;
	
	@PostMapping("")
	public Messenger write(@RequestBody Review review) {
		logger.info("== 리뷰 등록 =="+review.toString());
		return reviewRepository.insert(review)== 1 ? Messenger.SUCCESS : Messenger.FAILURE; 
	}
 
	@GetMapping("/list")
	public List<Review> list() {
		logger.info("== 게시판 목록 ==");
		return reviewRepository.selectAll();
	}
	
	@GetMapping("/{reviewNum}")
	public Review detail(@PathVariable int reviewNum) {
		logger.info("== 게시글 상세 ==");
		return reviewRepository.selectById(reviewNum);
	}
	
	@PutMapping("")
	public Messenger update(@RequestBody Review review) {
		logger.info("== 게시글 수정 =="+review.toString());
		return reviewRepository.update(review)== 1 ? Messenger.SUCCESS : Messenger.FAILURE;
	}
	
	@DeleteMapping("")
	public Messenger delete(@RequestBody Review review) {
		logger.info("== 게시글 삭제 =="+review.getReviewTitle());
		return reviewRepository.delete(review)== 1 ? Messenger.SUCCESS : Messenger.FAILURE; 
	}

	@GetMapping("/count")
	public String count() {
		logger.info(String.format("Count reviews ..."));
		var map = new HashMap<String, String>();
		return string.apply(reviewRepository.count());
	}
	
}