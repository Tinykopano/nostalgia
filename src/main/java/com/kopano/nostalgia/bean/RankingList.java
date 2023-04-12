package com.kopano.nostalgia.bean;

import lombok.Data;

import java.util.Date;

@Data
public class RankingList {
    private Integer listId;
    private String listName;
    private Date releaseTime;
}
