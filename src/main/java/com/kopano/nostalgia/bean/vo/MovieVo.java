package com.kopano.nostalgia.bean.vo;

import lombok.Data;

import java.util.Date;

@Data
public class MovieVo {
    private Integer movieId;
    private String oriName;
    private String chineseName;
    private Date releaseDate;
    private DirectorVo director;
    private Integer order;
}
