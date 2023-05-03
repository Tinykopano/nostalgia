package com.kopano.nostalgia.controller;

import com.kopano.nostalgia.bean.PageResult;
import com.kopano.nostalgia.bean.Result;
import com.kopano.nostalgia.bean.po.Director;
import com.kopano.nostalgia.bean.vo.DirectorVo;
import com.kopano.nostalgia.service.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class DirectorController {
    @Autowired
    private DirectorService directorService;

    @GetMapping("/directors")
    public Result<PageResult<DirectorVo>> getPage(@RequestParam(value = "pageNum", required = false) Integer pageNum,
                                                  @RequestParam(value = "pageSize", required = false) Integer pageSize,
                                                  @RequestParam(value = "name", required = false) String name) {
        return Result.success(directorService.getPage(pageNum, pageSize,name));
    }

    @PostMapping("/director")
    public Result<Integer> addDirector(@RequestBody Director director) {
        return Result.success(directorService.addDirector(director));
    }

    @GetMapping("/director/{directorId}")
    public Result<DirectorVo> getMovieById(@PathVariable("directorId") Integer id) {
        return Result.success(directorService.getDirectorById(id));
    }
}
