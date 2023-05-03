package com.kopano.nostalgia.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kopano.nostalgia.bean.PageResult;
import com.kopano.nostalgia.bean.po.Director;
import com.kopano.nostalgia.bean.vo.DirectorVo;
import com.kopano.nostalgia.mapper.DirectorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DirectorService {

    @Autowired
    private DirectorMapper directorMapper;

    public DirectorVo getDirectorById(Integer id) {
        return directorMapper.selectDirectorById(id);
    }

    public PageResult<DirectorVo> getPage(Integer pageNum, Integer pageSize,String name) {
        if (pageNum == null) {
            pageNum = 1;
        }
        if (pageSize == null) {
            pageSize = 10;
        }

        IPage<DirectorVo> page = new Page<>(pageNum, pageSize);

        IPage<DirectorVo> directorPage = directorMapper.selectDirectorPage(page, name);

        PageResult<DirectorVo> result = new PageResult<>();
        result.setPageNum(pageNum);
        result.setPageSize(pageSize);
        result.setPages(directorPage.getRecords());
        result.setTotal(directorPage.getTotal());
        return result;
    }

    public Integer addDirector(Director director) {
        return directorMapper.insert(director);
    }
}
