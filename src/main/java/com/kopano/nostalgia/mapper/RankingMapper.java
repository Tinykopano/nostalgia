package com.kopano.nostalgia.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.kopano.nostalgia.bean.po.Ranking;
import com.kopano.nostalgia.bean.vo.RankingVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RankingMapper extends BaseMapper<Ranking> {

    RankingVo selectRankingById(Integer id);

    IPage<RankingVo> selectRankingPage(IPage<RankingVo> page);
}
