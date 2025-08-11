package com.hana7.springdemo.jpa.repository;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.hana7.springdemo.jpa.entity.OrderItem;
import com.hana7.springdemo.jpa.entity.Orders;
import com.hana7.springdemo.jpa.entity.SaleStat;

public interface OrderRepository extends JpaRepository<Orders, Integer> {

	// @Query("select o from Orders o"
	// 	+ " where o.createdAt between concat(:saledt, ' 00:00:00.00') and concat(:saledt, ' 23:59:59.99')")
	// public List<Orders> getOrdersBySaledt(@Param("saledt") String saledt);

	public List<Orders> findByCreatedAtBetween(LocalDateTime start, LocalDateTime end);

	@Query(value = "select 'today' saledt, count(*) ordercnt, 0 totamt from Orders o"
		+ " where o.createdAt between concat(:saledt, ' 00:00:00.00') and concat(:saledt, ' 23:59:59.99')", nativeQuery = true)
	public SaleStat getTodayStat(@Param("saledt") String saledt);

	@Query(value =
		"select oi.item as id, max(oi.id) as orders, oi.item, sum(oi.cnt) as cnt, sum(oi.amt) as amt"
			+ "  from Orders o inner join OrderItem oi on o.id = oi.orders"
			+ " where o.createdAt between concat(:saledt, ' 00:00:00.00') and concat(:saledt, ' 23:59:59.99')"
			+ " group by oi.item", nativeQuery = true)
	public List<OrderItem> getTodayItemStat(@Param("saledt") String saledt);
}
