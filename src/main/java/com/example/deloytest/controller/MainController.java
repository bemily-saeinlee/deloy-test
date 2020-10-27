package com.example.deloytest.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    Logger logger = LoggerFactory.getLogger(MainController.class);
    @GetMapping("/hello")
    public String main() {
        logger.info("Hello World");
        return "hello";
    }
}
