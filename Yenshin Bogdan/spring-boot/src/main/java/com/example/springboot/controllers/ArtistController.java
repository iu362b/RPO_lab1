package com.example.springboot.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.bind.annotation.*;
import com.example.springboot.models.Artist;
import com.example.springboot.models.Country;
import com.example.springboot.repositories.ArtistRepository;
import com.example.springboot.repositories.CountryRepository;

import java.util.*;



@RestController
@RequestMapping("/api/v1")
public class ArtistController {
    @Autowired
    ArtistRepository artistRepository;
    @Autowired
    CountryRepository countryRepository;
    @GetMapping("/artists")
    public List
    getAllArtists() {
    return artistRepository.findAll();
}

@PostMapping("/artists")
public ResponseEntity<Object> createArtist(@RequestBody Artist artist) throws Exception {
    try {
        Optional<Country>
        cc = countryRepository.findById(artist.country.id);
        if (cc.isPresent()) {
            artist.country = cc.get();
            }
        Artist nc = artistRepository.save(artist);
        return new ResponseEntity<Object>(nc, HttpStatus.OK);
        }
    catch(Exception ex) {
        String error;
        //System.out.println(ex.getMessage());
        if (ex.getMessage().contains("constraint [name_UNIQUE]")) error = "artistalreadyexists";
        else error = "undefinederror";
        Map<String, String>
        map = new HashMap<>();
        map.put("error", error);
        return new ResponseEntity<Object> (map, HttpStatus.OK);
    }
}

@PutMapping("/artists/{id}")
public ResponseEntity<Artist> updateArtist(
            @PathVariable(value = "id") Long artistId,
            @RequestBody Artist artistDetails){
    Artist artist = null;
    Optional<Artist>
    cc = artistRepository.findById(artistId);
    if (cc.isPresent()) {
        artist = cc.get();
        artist.name = artistDetails.name;
        artistRepository.save(artist);
        return ResponseEntity.ok(artist);
    } 
    else{
        throw new ResponseStatusException(HttpStatus.NOT_FOUND, "artist not found");
    }
    }
@DeleteMapping("/artists/{id}")
public ResponseEntity<Object> deleteArtist(@PathVariable(value = "id") Long artistId){
    Optional<Artist>
    artist = artistRepository.findById(artistId);
    Map<String, Boolean>
    resp = new HashMap<>();
    if (artist.isPresent()) {
        artistRepository.delete(artist.get());
        resp.put("deleted", Boolean.TRUE);
    }
    else resp.put("deleted", Boolean.FALSE);
    return ResponseEntity.ok(resp);
}

}