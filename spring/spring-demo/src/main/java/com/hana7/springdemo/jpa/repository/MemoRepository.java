package com.hana7.springdemo.jpa.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import com.hana7.springdemo.jpa.entity.Memo;

public interface MemoRepository extends JpaRepository<Memo, Integer> {
	List<Memo> findByMnoBetweenOrderByMnoDesc(int start, int end);

	List<Memo> findByMnoBetween(int start, int end, Sort sorting);
}
