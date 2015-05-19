package com.daisydan.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by veryyoung on 2015/5/19.
 */
@Controller
@RequestMapping("/article")
public class ArticleController extends BaseController {

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String getWrite() {
        return "/article/write";
    }
}
