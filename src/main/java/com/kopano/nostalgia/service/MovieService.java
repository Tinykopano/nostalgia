package com.kopano.nostalgia.service;

import com.kopano.nostalgia.repository.MovieRepository;
import com.kopano.nostalgia.bean.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieService {

    @Autowired
    private MovieRepository movieRepository;

    public List<Movie> getList() {
        return movieRepository.findAll();
    }

    public Movie getMovieById(Integer id) {
        return movieRepository.findById(id).get();
    }
}
