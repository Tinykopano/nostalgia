package com.kopano.nostalgia.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kopano.nostalgia.bean.Movie;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MovieMapper extends BaseMapper<Movie> {
}
