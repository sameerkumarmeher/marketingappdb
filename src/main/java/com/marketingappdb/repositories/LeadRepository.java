package com.marketingappdb.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.marketingappdb.entities.Lead;

public interface LeadRepository extends JpaRepository<Lead, Long> {

}
