package com.kopano.nostalgia.controller;

import com.kopano.nostalgia.bean.Movie;
import com.kopano.nostalgia.service.RankingListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RankingListController {
    @Autowired
    private RankingListService rankingListService;

    @GetMapping("/ranking/{listId}")
    public List<Movie> getMovieListByRankingId(@PathVariable("listId") Integer id){
        return rankingListService.getMovieListByRankingId(id);
    }
}
