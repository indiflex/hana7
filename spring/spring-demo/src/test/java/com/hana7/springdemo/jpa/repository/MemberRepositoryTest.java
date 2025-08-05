package com.hana7.springdemo.jpa.repository;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;
import java.util.stream.Stream;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Commit;
import org.springframework.util.StringUtils;

import com.hana7.springdemo.jpa.dto.SearchCond;
import com.hana7.springdemo.jpa.entity.Member;
import com.hana7.springdemo.jpa.entity.MemberImage;
import com.hana7.springdemo.jpa.entity.QMember;
import com.querydsl.core.BooleanBuilder;

class MemberRepositoryTest extends RepositoryTest {
	@Autowired
	MemberRepository repository;

	@Test
	@Commit
	void imagesTest() {
		Member mbr = repository.findById(1L).orElseThrow();
		List<MemberImage> images = Stream.iterate(1, n -> n + 1)
			.limit(5)
			.map(n -> MemberImage.builder()
				.orgname("orgname" + n)
				.savename("savename" + n)
				.savedir("2025/08/05")
				.member(mbr)
				.build()
			).toList();

		mbr.setImages(images);
	}

	@Test
	void saveTest() {
		// give
		Member m = Member.builder().nickname("Kim").email("kim@gmail.com").build();

		Member mbr = new Member();
		// mbr.setNickname("Hong");
		mbr.setEmail("hong@gmail.com");

		// when
		Member savedM = repository.save(m);
		Member savedMbr = repository.save(mbr);

		System.out.println("savedMbr = " + savedMbr);

		// then
		Member foundM = repository.findById(savedM.getId()).orElseThrow();
		Member foundMbr = repository.findById(savedMbr.getId()).orElseThrow();

		assertEquals(savedM.getNickname(), foundM.getNickname());
		assertEquals(savedM, foundM);
		assertEquals(savedMbr, foundMbr);
		System.out.println("foundM = " + foundM);
		System.out.println("foundMbr = " + foundMbr);
	}

	@Test
	void listTest() {
		SearchCond cond = SearchCond.builder().build();
		QMember qm = QMember.member;
		BooleanBuilder bb = new BooleanBuilder();
		if (StringUtils.hasText(cond.getSearchNickname())) {
			bb.and(qm.nickname.contains(cond.getSearchNickname()));
		}

		if (StringUtils.hasText(cond.getSearchEmail())) {
			bb.and(qm.email.contains(cond.getSearchEmail()));
		}

		repository.findAll(bb, cond.getPager()).forEach(this::print);
	}

	@Test
	@Commit
	void deleteTest() {
		long id = 2L;
		repository.deleteById(id);
		assertFalse(repository.findById(id).isPresent());
	}
}
