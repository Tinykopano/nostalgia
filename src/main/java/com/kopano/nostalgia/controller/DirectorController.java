package com.kopano.nostalgia.controller;

import com.kopano.nostalgia.bean.Director;
import com.kopano.nostalgia.bean.Movie;
import com.kopano.nostalgia.service.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class DirectorController {
    @Autowired
    private DirectorService directorService;

    @GetMapping("/directors")
    public List<Director> getAll() {
        List<Director> list = directorService.getList();
        return list;
    }

    @GetMapping("/director/{directorId}")
    public Director getMovieById(@PathVariable("directorId") Integer id) {
        return directorService.getDirectorById(id);
    }
}
