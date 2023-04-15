package com.kopano.nostalgia.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("ranking_list_t")
public class RankingList {
    @TableId
    private Integer listId;
    private String listName;
    private Date releaseTime;
}
