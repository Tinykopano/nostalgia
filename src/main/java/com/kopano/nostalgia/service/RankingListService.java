package com.kopano.nostalgia.service;

import com.kopano.nostalgia.bean.Movie;
import com.kopano.nostalgia.mapper.RankingListMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RankingListService {
    @Autowired
    private RankingListMapper rankingListMapper;

    public List<Movie> getMovieListByRankingId(Integer id){
        return rankingListMapper.findListByListId(id);
    }
}
