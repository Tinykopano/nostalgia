package com.kopano.nostalgia.controller;

import com.kopano.nostalgia.bean.PageResult;
import com.kopano.nostalgia.bean.Result;
import com.kopano.nostalgia.bean.vo.RankingVo;
import com.kopano.nostalgia.service.RankingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RankingController {
    @Autowired
    private RankingService rankingService;

    @GetMapping("/ranking/{rankingId}")
    public Result<RankingVo> getRankingById(@PathVariable("rankingId") Integer id) {
        return Result.success(rankingService.getRankingById(id));
    }

    @GetMapping("/rankings")
    public Result<PageResult<RankingVo>> getRankings(@RequestParam(value = "pageNum", required = false) Integer pageNum,
                                         @RequestParam(value = "pageSize", required = false) Integer pageSize) {
        return Result.success(rankingService.getRankings(pageNum, pageSize));
    }
}
