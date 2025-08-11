package com.hana7.springdemo.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hana7.springdemo.jpa.entity.SaleItemStat;

public interface SaleItemStatRepository extends JpaRepository<SaleItemStat, Integer> {
}
