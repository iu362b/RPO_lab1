package com.example.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.springboot.models.Museum;

@Repository
public interface MuseumRepository  extends JpaRepository<Museum, Long>
{
}