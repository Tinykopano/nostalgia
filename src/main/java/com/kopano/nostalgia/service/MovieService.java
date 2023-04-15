package com.kopano.nostalgia.service;

import com.kopano.nostalgia.mapper.MovieMapper;
import com.kopano.nostalgia.bean.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieService {
    @Autowired
    private MovieMapper movieMapper;

    public List<Movie> getList() {
        return movieMapper.selectList(null);
    }

    public Movie getMovieById(Integer id) {
        return movieMapper.selectById(id);
    }
}
