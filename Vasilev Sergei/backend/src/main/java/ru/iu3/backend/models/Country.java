package ru.iu3.backend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;




@Entity
@Table(name = "countries")
@Access(AccessType.FIELD)
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    public Long id;


    @Column(name = "name", nullable = false, unique = true)
    public String name;


    @JsonIgnore
    @OneToMany(mappedBy = "countryid")
    public List<Artists> artists = new ArrayList<>();


    public Country() {}


    public Country(Long id) {
        this.id = id;
    }
}
