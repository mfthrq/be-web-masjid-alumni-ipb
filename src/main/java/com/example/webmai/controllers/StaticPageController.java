package com.example.webmai.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StaticPageController {
    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/tentang")
    public String tentang() {
        return "tentang";
    }

    @RequestMapping("/agenda")
    public String agenda() {
        return "agenda";
    }

    @RequestMapping("/agenda-detail")
    public String agenda_detail() {
        return "agenda-detail";
    }
    
    @RequestMapping("/agenda-detail1")
    public String agenda_detail1() {
        return "agenda-detail1";
    }

    @RequestMapping("/agenda-detail2")
    public String agenda_detail2() {
        return "agenda-detail2";
    }

    @RequestMapping("/agenda-detail3")
    public String agenda_detail3() {
        return "agenda-detail3";
    }

    @RequestMapping("/agenda-detail4")
    public String agenda_detail4() {
        return "agenda-detail4";
    }

    @RequestMapping("/agenda-detail5")
    public String agenda_detail5() {
        return "agenda-detail5";
    }

    @RequestMapping("/donasi")
    public String donasi() {
        return "donasi";
    }

    @RequestMapping("/contact")
    public String kontak() {
        return "contact";
    }
}
