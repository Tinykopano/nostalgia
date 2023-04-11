package com.kopano.nostalgia.mapper;

import com.kopano.nostalgia.bean.Director;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DirectorMapper {
    @Select("SELECT * FROM director_t")
    List<Director> findAll();
    @Select("SELECT * FROM director_t WHERE director_id = #{id}")
    Director findById(Integer id);
}
