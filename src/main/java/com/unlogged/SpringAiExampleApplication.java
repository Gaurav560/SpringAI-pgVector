package com.unlogged;

import io.unlogged.Unlogged;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication

public class SpringAiExampleApplication {
    @Unlogged
    public static void main(String[] args) {
        SpringApplication.run(SpringAiExampleApplication.class, args);
    }

}
