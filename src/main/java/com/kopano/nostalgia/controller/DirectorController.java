package com.kopano.nostalgia.controller;

import com.kopano.nostalgia.bean.PageResult;
import com.kopano.nostalgia.bean.Result;
import com.kopano.nostalgia.bean.vo.DirectorVo;
import com.kopano.nostalgia.service.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DirectorController {
    @Autowired
    private DirectorService directorService;

    @GetMapping("/directors")
    public Result<PageResult<DirectorVo>> getPage(@RequestParam(value = "pageNum", required = false) Integer pageNum,
                                                  @RequestParam(value = "pageSize", required = false) Integer pageSize) {
        return Result.success(directorService.getPage(pageNum, pageSize));
    }

    @GetMapping("/director/{directorId}")
    public Result<DirectorVo> getMovieById(@PathVariable("directorId") Integer id) {
        return Result.success(directorService.getDirectorById(id));
    }
}
