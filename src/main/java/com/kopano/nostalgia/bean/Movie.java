package com.kopano.nostalgia.bean;

import lombok.Data;

import java.util.Date;

@Data
public class Movie {

    private Integer movieId;
    private String oriName;
    private String chineseName;

    private Integer genreId;

    private Integer directorId;

    private Date createTime;

    private Date updateTime;
}
