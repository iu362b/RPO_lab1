package ru.iu3.backend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

// Описываем доступ к нашему классу (раздел - модель)
// Таблица в базе

@Entity
@Table(name = "countries")
@Access(AccessType.FIELD)
public class Country {
    // Указываем дополнительные свойства
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    public Long id;

    // Поле - имя.
    @Column(name = "name", nullable = false, unique = true)
    public String name;

    // Лучше поставить аннотацию JsonIgnore, так как она ограничивает появления "зеркала"
    @JsonIgnore
    @OneToMany(mappedBy = "countryid")
    public List<Artists> artists = new ArrayList<>();
    public Country() {}

    public Country(Long id) {
        this.id = id;
    }
}
