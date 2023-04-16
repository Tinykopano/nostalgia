package com.kopano.nostalgia.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kopano.nostalgia.bean.dto.PageResult;
import com.kopano.nostalgia.mapper.MovieMapper;
import com.kopano.nostalgia.bean.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {
    @Autowired
    private MovieMapper movieMapper;

    public PageResult<Movie> getList(Integer pageNum, Integer pageSize) {
        if (pageNum == null) {
            pageNum = 1;
        }
        if (pageSize == null) {
            pageSize = 10;
        }

        Page<Movie> page = new Page<>(pageNum, pageSize);
        Page<Movie> moviePage = movieMapper.selectPage(page, null);

        PageResult<Movie> result = new PageResult<>();
        result.setData(moviePage.getRecords());
        result.setPageNum(pageNum);
        result.setPageSize(pageSize);
        result.setTotal(moviePage.getTotal());
        return result;
    }

    public Movie getMovieById(Integer id) {
        return movieMapper.selectById(id);
    }
}
