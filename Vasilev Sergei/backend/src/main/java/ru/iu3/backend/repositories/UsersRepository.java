package ru.iu3.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.iu3.backend.models.Users;

import java.util.Optional;


public interface UsersRepository extends JpaRepository<Users, Long> {

    Optional<Users> findByToken(String valueOf);
    Optional<Users> findByLogin(String login);
}
