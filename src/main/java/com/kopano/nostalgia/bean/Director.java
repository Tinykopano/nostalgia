package com.kopano.nostalgia.bean;

import jakarta.persistence.*;
import jakarta.persistence.Id;
import lombok.Data;

import java.util.Date;

@Entity
@Data
@Table(name = "movie_t")
public class Director {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column
    private Integer directorId;
    @Column
    private String oriName;
    @Column
    private String chineseName;
    @Column
    private Date createTime;
    @Column
    private Date updateTime;
}
