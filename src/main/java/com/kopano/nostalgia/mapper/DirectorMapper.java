package com.kopano.nostalgia.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.kopano.nostalgia.bean.po.Director;
import com.kopano.nostalgia.bean.vo.DirectorVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DirectorMapper extends BaseMapper<Director> {

   DirectorVo selectDirectorById(Integer id);

   IPage<DirectorVo> selectDirectorPage(IPage<DirectorVo> page, String name);
}
