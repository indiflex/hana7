package com.hana7.springdemo.jpa.repository;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Commit;

import com.hana7.springdemo.jpa.entity.OrderItem;
import com.hana7.springdemo.jpa.entity.Orders;
import com.hana7.springdemo.jpa.entity.SaleItemStat;
import com.hana7.springdemo.jpa.entity.SaleStat;

class OrderRepositoryTest extends RepositoryTest {
	@Autowired
	private OrderRepository repository;

	@Autowired
	private SaleStatRepository statRepository;
	@Autowired
	private SaleItemStatRepository statItemRepository;

	@Test
	@Commit
	void todayStatTest() {
		LocalDate today = LocalDate.now();
		LocalDateTime start = today.atStartOfDay();
		LocalDateTime end = today.plusDays(1).atStartOfDay().minusSeconds(1);
		List<Orders> orders = repository.findByCreatedAtBetween(start, end);
		System.out.println("orders = " + orders);

		SaleStat todayStat = SaleStat.builder().saledt(today.toString()).ordercnt(orders.size()).build();
		System.out.println("todayStat = " + todayStat);
		statRepository.save(todayStat);
	}

	@Test
	@Commit
	void statTest() {
		String saledt = LocalDate.now().toString();

		// reader
		// SaleStat stat = repository.getTodayStat(saledt, null);
		SaleStat stat = repository.getTodayStat(saledt);
		SaleStat todayStat = SaleStat.builder()
			.saledt(saledt)
			.ordercnt(stat.getOrdercnt())
			.build();

		// processing
		List<OrderItem> oitems = repository.getTodayItemStat(saledt);
		List<SaleItemStat> todayItems = oitems.stream()
			.map(oi -> SaleItemStat.builder()
				.saledt(todayStat)
				.item(oi.getItem())
				.amt(oi.getAmt())
				.cnt(oi.getCnt())
				.build())
			.toList();
		System.out.println("todayItems = " + todayItems);

		todayStat.setSaleItemStats(todayItems);
		int sum = todayItems.stream().mapToInt(SaleItemStat::getAmt).sum();
		todayStat.setTotamt(sum);

		// writer
		SaleStat savedStat = statRepository.save(todayStat);
		System.out.println("savedStat = " + savedStat);
	}
}
