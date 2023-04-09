package com.kopano.nostalgia.repository;

import com.kopano.nostalgia.bean.Movie;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MovieRepository extends JpaRepository<Movie,Integer> {
}
