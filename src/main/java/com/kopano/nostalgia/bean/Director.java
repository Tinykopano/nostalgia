package com.kopano.nostalgia.bean;

import lombok.Data;

import java.util.Date;

@Data
public class Director {

    private Integer directorId;
    private String oriName;
    private String chineseName;
    private Date createTime;
    private Date updateTime;
}
