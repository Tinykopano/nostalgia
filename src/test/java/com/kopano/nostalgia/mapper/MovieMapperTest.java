package com.kopano.nostalgia.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kopano.nostalgia.bean.po.Movie;
import com.kopano.nostalgia.bean.vo.MovieVo;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

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

    @Test
    public void testSelectMovieById(){
        MovieVo results = movieMapper.selectMovieById(1);
        System.out.println(results);

    }


}