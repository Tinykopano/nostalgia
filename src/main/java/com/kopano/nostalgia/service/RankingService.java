package com.kopano.nostalgia.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kopano.nostalgia.bean.PageResult;
import com.kopano.nostalgia.bean.vo.RankingVo;
import com.kopano.nostalgia.mapper.RankingMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RankingService {
    @Autowired
    private RankingMapper rankingListMapper;

    public RankingVo getRankingById(Integer id) {
        return rankingListMapper.selectRankingById(id);
    }

    public PageResult<RankingVo> getRankings(Integer pageNum, Integer pageSize) {
        if (pageNum == null) {
            pageNum = 1;
        }
        if (pageSize == null) {
            pageSize = 10;
        }
        IPage<RankingVo> page = new Page<>(pageNum, pageSize);
        IPage<RankingVo> rankingPage = rankingListMapper.selectRankingPage(page);
        PageResult<RankingVo> result = new PageResult<>();
        result.setTotal(rankingPage.getTotal());
        result.setPageNum(pageNum);
        result.setPageSize(pageSize);
        result.setPages(rankingPage.getRecords());
        return result;
    }
}
