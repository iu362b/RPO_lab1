package ru.iu3.backend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name = "users")
@Access(AccessType.FIELD)
public class Users {

    @Id
    @Column(name = "id", updatable = false, nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;


    @Column(name = "login", unique = true, nullable = false)
    public String login;


    @JsonIgnore
    @Column(name = "password")
    public String password;


    @Column(name = "email")
    public String email;


    @JsonIgnore
    @Column(name = "salt")
    public String salt;



    @Column(name = "token")
    public String token;

    // Поле активности
    @Column(name = "activity")
    public LocalDateTime activity;


    @Transient
    public String np;


    @ManyToMany(mappedBy = "users")
    public Set<Museum> museums = new HashSet<>();

    public Users() {}


    public Users(Long id) {
        this.id = id;
    }


    public void addMuseum(Museum m) {
        this.museums.add(m);
        m.users.add(this);
    }


    public void removeMuseum(Museum m) {
        this.museums.remove(m);
        m.users.remove(this);
    }
}
