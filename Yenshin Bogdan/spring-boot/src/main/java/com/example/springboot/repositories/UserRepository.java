package com.example.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;
import com.example.springboot.models.User;
@Repository
public interface UserRepository extends JpaRepository<User, Long>
{
    Optional<User> findByToken(String valueOf);
    Optional<User> findByLogin(String login);
}