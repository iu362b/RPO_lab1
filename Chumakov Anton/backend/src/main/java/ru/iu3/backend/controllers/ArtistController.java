package ru.iu3.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.backend.models.Artist;
import ru.iu3.backend.models.Country;
import ru.iu3.backend.models.Painting;
import ru.iu3.backend.repositories.ArtistRepository;
import ru.iu3.backend.repositories.CountryRepository;
import ru.iu3.backend.tools.DataValidationException;

import java.util.*;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class ArtistController {
    @Autowired
    ArtistRepository artistRepository;

    @Autowired
    CountryRepository countryRepository;

    @GetMapping("/artists")
    public Page<Artist> getAllArtists(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        return artistRepository.findAll(PageRequest.of(page, limit, Sort.by(Sort.Direction.ASC, "name")));
    }

    @GetMapping("/artists/{id}")
    public ResponseEntity getArtist(@PathVariable(value = "id") Long artistId) throws DataValidationException {
        Artist artists = artistRepository.findById(artistId).
                orElseThrow(() -> new DataValidationException("Художник с таким индексом не найден"));
        return ResponseEntity.ok(artists);
    }


    @GetMapping("/artists/{id}/paintings")
    public ResponseEntity<Object> getPaintingsFromArtist(@PathVariable(value = "id") Long artistID) {
        Optional<Artist> optionalArtists = artistRepository.findById(artistID);

        if (optionalArtists.isPresent()) {
            return ResponseEntity.ok(optionalArtists.get().paintings);
        }

        return ResponseEntity.ok(new ArrayList<Painting>());
    }


    @PostMapping("/artists")
    public ResponseEntity<Object> createArtist(@RequestBody Artist artist) throws DataValidationException {
        try {
            Country country = countryRepository.findById(artist.country.id)
                    .orElseThrow(() -> new DataValidationException("Страна не найдена"));
            artist.country = country;
            Artist nc = artistRepository.save(artist);
            return new ResponseEntity<Object>(nc, HttpStatus.OK);
        } catch (Exception exception) {
            if (exception.getMessage().contains("artists.name_UNIQUE")) {
                throw new DataValidationException("Этот художник уже есть в базе");
            } else {
                throw new DataValidationException("Неизвестная ошибка");
            }
        }
    }

    @PostMapping("/deleteartists")
    public ResponseEntity deleteArtists(@Validated @RequestBody List<Artist> artists) {
        artistRepository.deleteAll(artists);
        return new ResponseEntity(HttpStatus.OK);
    }


    @PutMapping("/artists/{id}")
    public ResponseEntity<Artist> updateArtist(@PathVariable(value = "id") Long artistsID,
                                                @RequestBody Artist artistDetails) {
        Artist artist = null;
        Optional<Artist> cc = artistRepository.findById(artistsID);

        if (cc.isPresent()) {
            artist = cc.get();
            artist.name = artistDetails.name;
            artist.century = artistDetails.century;
            artist.country.id = artistDetails.country.id;

            artistRepository.save(artist);
            return ResponseEntity.ok(artist);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "artist not found");
        }
    }

    @DeleteMapping("/artists/{id}")
    public ResponseEntity<Object> deleteArtist(@PathVariable(value = "id") Long artistId) {
        Optional<Artist> artist = artistRepository.findById(artistId);
        Map<String, Boolean> resp = new HashMap<>();
        if (artist.isPresent()) {
            artistRepository.delete(artist.get());
            resp.put("deleted", Boolean.TRUE);
        } else
            resp.put("deleted", Boolean.FALSE);
        return ResponseEntity.ok(resp);
    }

//    @GetMapping("/artists")
//    public List<Artist> getAllArtists() {
//        return artistRepository.findAll();
//
//    }
//
//    @PostMapping("/artists")
//    public ResponseEntity<Object> createArtist(@RequestBody Artist artist) throws Exception {
//        try {
//            Optional<Country> cc = countryRepository.findById(artist.country.id);
//            cc.ifPresent(country -> artist.country = country);
//            Artist nc = artistRepository.save(artist);
//            return new ResponseEntity<Object>(nc, HttpStatus.OK);
//        }
//        catch(Exception ex) {
//            String error;
//            if (ex.getMessage().contains("artists.name_UNIQUE"))
//                error = "artistalreadyexists";
//            else
//                error = "undefinederror";
//            Map<String, String> map = new HashMap<>();
//            map.put("error", error);
//            return ResponseEntity.ok(map);
//        }
//    }
//
//    @PutMapping("/artists/{id}")
//    public ResponseEntity<Artist> updateArtist(
//            @PathVariable(value = "id") Long artistId,
//            @RequestBody Artist artistDetails
//    ) {
//        Artist artist = null;
//        Optional<Artist> cc = artistRepository.findById(artistId);
//        if (cc.isPresent()) {
//            artist = cc.get();
//            artist.name = artistDetails.name;
//            artistRepository.save(artist);
//            return ResponseEntity.ok(artist);
//        } else {
//            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "artist not found");
//        }
//    }
//
}
