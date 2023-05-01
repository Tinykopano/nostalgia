package com.kopano.nostalgia.bean.vo;

import lombok.Data;

import java.util.Date;

@Data
public class RankingVo {
    private Integer rankingId;
    private String rankingName;
    private String description;
    private Date releaseDate;
}
