package com.kopano.nostalgia.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kopano.nostalgia.bean.PageResult;
import com.kopano.nostalgia.bean.vo.MovieVo;
import com.kopano.nostalgia.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {
    @Autowired
    private MovieMapper movieMapper;

    public PageResult<MovieVo> getPage(Integer pageNum, Integer pageSize, Integer rankingListId) {
        if (pageNum == null) {
            pageNum = 1;
        }
        if (pageSize == null) {
            pageSize = 10;
        }

        IPage<MovieVo> page = new Page<>(pageNum, pageSize);
        IPage<MovieVo> moviePage;
        if (rankingListId != null && rankingListId > 0) {
            moviePage = movieMapper.selectMovieByRankingId(page, rankingListId);
        } else {
            moviePage = movieMapper.selectMoviePage(page);
        }

        PageResult<MovieVo> result = new PageResult<>();
        result.setPageNum(pageNum);
        result.setPageSize(pageSize);
        result.setPages(moviePage.getRecords());
        result.setTotal(moviePage.getTotal());
        return result;
    }

    public MovieVo getMovieById(Integer id) {
        return movieMapper.selectMovieById(id);
    }

}
