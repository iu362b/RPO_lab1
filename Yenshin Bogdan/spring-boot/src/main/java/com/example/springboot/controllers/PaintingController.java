package com.example.springboot.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

import com.example.springboot.models.*;
import com.example.springboot.repositories.MuseumRepository;
import com.example.springboot.repositories.PaintingRepository;
import com.example.springboot.tools.DataValidationException;
import org.springframework.validation.annotation.Validated;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class PaintingController {
    @Autowired
    PaintingRepository paintingRepository;

    @GetMapping("/paintings")
    public Page<Painting> getAllPaintings(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        return paintingRepository.findAll(PageRequest.of(page, limit, Sort.by(Sort.Direction.ASC, "name")));
    }

    @GetMapping("/paintings/{id}")
    public ResponseEntity<Painting> getPainting(@PathVariable(value = "id") Long paintingID)
            throws DataValidationException {
        Painting painting = paintingRepository.findById(paintingID)
                .orElseThrow(() -> new DataValidationException("Картина не была найдена"));

        return ResponseEntity.ok(painting);
    }

    @PostMapping("/paintings")
    public ResponseEntity<Object> createPainting(@RequestBody Painting painting) throws DataValidationException {
        try {
            Painting np = paintingRepository.save(painting);
            return ResponseEntity.ok(np);
        }
        catch(Exception ex) {
            if (ex.getMessage().contains("countries.name_UNIQUE")) {
                throw new DataValidationException("Эта страна уже есть в базе");
            } else {
                throw new DataValidationException("Неизвестная ошибка");
            }
        }
    }

    @PutMapping("/paintings/{id}")
    public ResponseEntity<Painting> updatePainting(
            @PathVariable(value = "id") Long paintingId,
            @RequestBody Painting paintingDetails
    ) throws DataValidationException {
        try {
            Painting painting = paintingRepository.findById(paintingId)
                    .orElseThrow(() -> new DataValidationException("Картина не может быть обновлёна"));
            painting.name = paintingDetails.name;
            painting.museum.id = paintingDetails.museum.id;
            painting.artist.id = paintingDetails.artist.id;
            painting.year = paintingDetails.year;

            paintingRepository.save(painting);

            return ResponseEntity.ok(painting);
        } catch (Exception exception) {
            if (exception.getMessage().contains("ConstraintViolationException")) {
                throw new DataValidationException("Эта картина уже есть в базе");
            } else {
                throw new DataValidationException("Неизвестная ошибка");
            }
        }
    }

    @PostMapping("/deletepaintings")
    public ResponseEntity deletePaintings(@Validated @RequestBody List<Painting> paintingList) {
        paintingRepository.deleteAll(paintingList);
        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping("/paintings/{id}")
    public ResponseEntity<Object> deletePainting(@PathVariable(value = "id") Long paintingId) {
        Optional<Painting> painting = paintingRepository.findById(paintingId);
        Map<String, Boolean> resp = new HashMap<>();
        if (painting.isPresent()) {
            paintingRepository.delete(painting.get());
            resp.put("deleted", Boolean.TRUE);
        } else
            resp.put("deleted", Boolean.FALSE);
        return ResponseEntity.ok(resp);
    }
}