package com.kopano.nostalgia.bean;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Entity
@Data
@Table(name = "movie_t")
public class Movie {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column
    private Integer movieId;
    @Column
    private String oriName;
    @Column
    private String chineseName;
    @Column
    private Integer genreId;
    @Column
    private Integer directorId;
    @Column
    private Date createTime;
    @Column
    private Date updateTime;
}
