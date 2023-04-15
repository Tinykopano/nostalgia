package com.kopano.nostalgia.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("director_t")
public class Director {
    @TableId
    private Integer directorId;
    private String oriName;
    private String chineseName;
    private Date createTime;
    private Date updateTime;
}
