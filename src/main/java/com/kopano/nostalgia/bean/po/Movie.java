package com.kopano.nostalgia.bean.po;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("movie_t")
public class Movie {
    @TableId
    private Integer movieId;
    private String oriName;
    private String chineseName;
    private Integer genreId;
    private Integer directorId;
    private Date createTime;
    private Date updateTime;
}
