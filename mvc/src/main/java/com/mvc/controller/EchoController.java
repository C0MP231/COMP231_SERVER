package com.mvc.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EchoController {

    @RequestMapping("/echo/{echo}")
    String hello(@PathVariable String echo) {
        return echo;
    }
}
