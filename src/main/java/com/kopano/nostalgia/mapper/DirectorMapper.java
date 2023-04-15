package com.kopano.nostalgia.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kopano.nostalgia.bean.Director;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DirectorMapper extends BaseMapper<Director> {
}
