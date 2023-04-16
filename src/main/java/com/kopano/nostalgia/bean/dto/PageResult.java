package com.kopano.nostalgia.bean.dto;

import lombok.Data;

import java.util.List;

@Data
public class PageResult<T> {
    private List<T> data;
    private Integer pageSize;
    private Integer pageNum;
    private Long total;
}
