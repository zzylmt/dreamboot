package com.zznet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @RequestMapping(value={"/master/", "/master"})
    public String sysindex() {
        return "master/login";
    }

    @RequestMapping(value={"/iuser/", "/iuser"})
    public String iuser() {
        return "iuser/login";
    }

    @RequestMapping("/")
    public String index() {
        return "index";
    }
}