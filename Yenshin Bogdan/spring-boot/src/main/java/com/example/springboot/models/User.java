package com.example.springboot.models;

import java.util.*;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.time.LocalDateTime;

import javax.persistence.*;
@Entity
@Table(name = "users")
@Access(AccessType.FIELD)
public class User {
    public User() { }
    public User(Long id) {
        this.id = id;
        }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    public long id;

    @JsonIgnore
    @Column(name = "password")
    public String password;
    
    @Column(name = "login", nullable = false, unique = true)
    public String login;

    @Column(name = "email", nullable = false, unique = true)
    public String email;

    @JsonIgnore
    @Column(name = "salt")
    public String salt;
    
    @Column(name = "token")
    public String token;
    
    @Column(name = "activity")
    public LocalDateTime activity;
    
    @ManyToMany(mappedBy = "users")
    public Set<Museum> museums = new HashSet<>();

    public void addMuseum(Museum m) {
        this.museums.add(m);
        m.users.add(this);
    }
    public void removeMuseum(Museum m) {
        this.museums.remove(m);
        m.users.remove(this);
    }
}