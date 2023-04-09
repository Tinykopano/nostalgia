package com.kopano.nostalgia.controller;

import com.kopano.nostalgia.bean.Movie;
import com.kopano.nostalgia.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MovieController {
    @Autowired
    private MovieService movieService;

    @GetMapping("/movies")
    public List<Movie> getAll() {
        List<Movie> list = movieService.getList();
        return list;
    }

    @GetMapping("/movie/{movieId}")
    public Movie getMovieById(@PathVariable("movieId") Integer id) {
        return movieService.getMovieById(id);
    }
}
