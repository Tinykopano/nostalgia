package com.kopano.nostalgia.mapper;

import com.kopano.nostalgia.bean.Movie;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MovieMapper {
    @Select("SELECT * FROM movie_t")
    List<Movie> findAll();
    @Select("SELECT * FROM movie_t WHERE movie_id = #{id}")
    Movie findById(Integer id);
}
