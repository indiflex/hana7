package com.hana7.springdemo.jpa.repository;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.hana7.springdemo.jpa.entity.Memo;

import jakarta.transaction.Transactional;

@SpringBootTest
@Transactional
class MemoRepositoryTest {
	@Autowired
	MemoRepository repository;

	@Test
	void testClass() {
		Memo m = Memo.builder().memoText("TTT").build();
		Memo savedM = repository.save(m);
		assertEquals(m, savedM);

		Memo foundMemo = repository.findById(savedM.getMno()).orElseThrow();
		assertEquals(savedM, foundMemo);

		System.out.println("foundMemo = " + foundMemo);
		System.out.println("repository.getClass().getName() = " + repository.getClass().getName());
		
		foundMemo.setMemoText("New MemoText!!");
		repository.saveAndFlush(foundMemo);
		System.out.println("foundMemo = " + foundMemo);

		savedM.setMemoText("SSSS");
		repository.saveAndFlush(savedM);
		System.out.println("savedM = " + savedM);

		repository.deleteById(savedM.getMno());
		Optional<Memo> byId = repository.findById(savedM.getMno());

		byId.ifPresent(memo -> System.out.println("byId = " + memo));
	}
}
