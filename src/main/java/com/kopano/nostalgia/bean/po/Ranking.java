package com.kopano.nostalgia.bean.po;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("ranking_t")
public class Ranking {
    @TableId
    private Integer rankingId;
    private String rankingName;
    private String description;
    private Date releaseDate;
    private short isDelete;
    private Date createTime;
    private Date updateTime;
}
