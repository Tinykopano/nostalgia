package com.kopano.nostalgia.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.kopano.nostalgia.bean.po.Movie;
import com.kopano.nostalgia.bean.vo.MovieVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MovieMapper extends BaseMapper<Movie> {

    MovieVo selectMovieById(Integer id);

    IPage<MovieVo> selectMoviePage(IPage<MovieVo> page);

    IPage<MovieVo> selectMovieByRankingId(IPage<MovieVo> page, Integer id);
}
