package com.kopano.nostalgia.mapper;

import com.kopano.nostalgia.bean.Movie;
import com.kopano.nostalgia.bean.RankingList;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface RankingListMapper {
    @Select("SELECT * FROM ranking_list_t")
    List<RankingList> findAll();

    @Select("SELECT a.* FROM movie_t a\n" +
            "    LEFT JOIN ranking_list_movie_t rlmt ON a.movie_id = rlmt.movie_id\n" +
            "LEFT JOIN ranking_list_t rl ON rlmt.ranking_list_id = rl.list_id\n" +
            "WHERE rl.list_id = #{id}\n" +
            "ORDER BY rlmt.rank_order;")
    List<Movie> findListByListId(Integer id);
}
