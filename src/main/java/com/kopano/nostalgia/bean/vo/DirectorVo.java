package com.kopano.nostalgia.bean.vo;

import lombok.Data;

import java.util.Date;

@Data
public class DirectorVo {
    private Integer directorId;
    private String oriName;
    private String chineseName;
    private Date birth;
    private String country;
}
