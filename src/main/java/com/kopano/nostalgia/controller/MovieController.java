package com.kopano.nostalgia.controller;

import com.kopano.nostalgia.bean.PageResult;
import com.kopano.nostalgia.bean.Result;
import com.kopano.nostalgia.bean.vo.MovieVo;
import com.kopano.nostalgia.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MovieController {
    @Autowired
    private MovieService movieService;

    @GetMapping("/movies")
    public Result<PageResult<MovieVo>> getPage(@RequestParam(value = "pageNum", required = false) Integer pageNum,
                                               @RequestParam(value = "pageSize", required = false) Integer pageSize,
                                               @RequestParam(value = "rankingListId", required = false) Integer rankingListId) {
        Result<PageResult<MovieVo>> result = new Result<>();
        result.setCode(200);
        result.setMsg("success");
        result.setData(movieService.getPage(pageNum, pageSize,rankingListId));
        return result;
    }

    @GetMapping("/movie/{movieId}")
    public Result<MovieVo> getMovieById(@PathVariable("movieId") Integer id) {
        Result<MovieVo> result = new Result<>();
        result.setCode(200);
        result.setMsg("success");
        result.setData(movieService.getMovieById(id));
        return result;
    }

}
