package com.example.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.springboot.models.Artist;
@Repository
public interface ArtistRepository extends JpaRepository<Artist, Long>
{
}