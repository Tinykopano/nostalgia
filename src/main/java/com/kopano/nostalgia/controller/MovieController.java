package com.kopano.nostalgia.controller;

import com.kopano.nostalgia.bean.Movie;
import com.kopano.nostalgia.bean.dto.PageResult;
import com.kopano.nostalgia.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MovieController {
    @Autowired
    private MovieService movieService;

    @GetMapping("/movies")
    public PageResult<Movie> getList(@RequestParam(value = "pageNum", required = false) Integer pageNum,
                                     @RequestParam(value = "pageSize", required = false) Integer pageSize) {
        return movieService.getList(pageNum, pageSize);

    }

    @GetMapping("/movie/{movieId}")
    public Movie getMovieById(@PathVariable("movieId") Integer id) {
        return movieService.getMovieById(id);
    }
}
