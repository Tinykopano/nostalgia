package com.kopano.nostalgia.service;

import com.kopano.nostalgia.bean.po.RankingList;
import com.kopano.nostalgia.mapper.RankingListMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RankingListService {
    @Autowired
    private RankingListMapper rankingListMapper;

    public RankingList getRankingListById(Integer id){
        return rankingListMapper.selectById(id);
    }
}
