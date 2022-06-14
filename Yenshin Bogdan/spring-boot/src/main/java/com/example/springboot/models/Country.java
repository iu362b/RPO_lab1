package com.example.springboot.models;

import java.util.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
@Entity
@Table(name = "countries")
@Access(AccessType.FIELD)
public class Country {
    public Country() { }
    public Country(Long id) {
        this.id = id;
        }
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    public long id;
    @Column(name = "name", nullable = false, unique = true)
    public String name;

    @JsonIgnore
    @OneToMany(mappedBy = "country")
    public List<Artist> artists = new ArrayList<Artist>();
}