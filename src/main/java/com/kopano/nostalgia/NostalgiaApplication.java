package com.kopano.nostalgia;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.kopano.nostalgia.mapper")
public class NostalgiaApplication {

    public static void main(String[] args) {
        SpringApplication.run(NostalgiaApplication.class, args);
    }

}
