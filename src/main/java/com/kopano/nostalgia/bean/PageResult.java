package com.kopano.nostalgia.bean;

import lombok.Data;

import java.util.List;

@Data
public class PageResult<T>  {
    private List<T> pages;
    private Integer pageSize;
    private Integer pageNum;
    private Long total;
}


