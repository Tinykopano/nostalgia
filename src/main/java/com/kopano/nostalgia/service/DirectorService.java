package com.kopano.nostalgia.service;

import com.kopano.nostalgia.bean.Director;
import com.kopano.nostalgia.bean.Movie;
import com.kopano.nostalgia.repository.DirectorRepository;
import com.kopano.nostalgia.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DirectorService {

    @Autowired
    private DirectorRepository directorRepository;

    public List<Director> getList() {
        return directorRepository.findAll();
    }

    public Director getDirectorById(Integer id) {
        return directorRepository.findById(id).get();
    }

}
