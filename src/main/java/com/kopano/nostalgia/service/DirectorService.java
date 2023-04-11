package com.kopano.nostalgia.service;

import com.kopano.nostalgia.bean.Director;
import com.kopano.nostalgia.mapper.DirectorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DirectorService {

    @Autowired
    private DirectorMapper directorMapper;

    public List<Director> getList() {
        return directorMapper.findAll();
    }

    public Director getDirectorById(Integer id) {
        return directorMapper.findById(id);
    }

}
