package com.kopano.nostalgia.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kopano.nostalgia.bean.Movie;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class MovieMapperTest {
    @Autowired
    private MovieMapper movieMapper;

    @Test
    public void testMovieList(){
        List<Movie> movies = movieMapper.selectList(null);
        System.out.println(movies.size());
    }

    @Test
    public void testMoviePage(){
        Page<Movie> page = new Page<>(1,10);
        Page<Movie> results = movieMapper.selectPage(page, null);
        results.getRecords().forEach(System.out::println);
    }


}