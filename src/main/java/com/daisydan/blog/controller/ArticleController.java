package com.daisydan.blog.controller;

import com.daisydan.blog.dao.ArticleDao;
import com.daisydan.blog.entity.Article;
import com.daisydan.blog.utils.ContextUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;

/**
 * Created by veryyoung on 2015/5/19.
 */
@Controller
@RequestMapping("/article")
public class ArticleController extends BaseController {

    @Autowired
    private ArticleDao articleDao;

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String getWrite() {
        return "/article/write";
    }

    @RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
    public String saveOrUpdate(Article article) {
        if (StringUtils.isEmpty(article.getId())) {
            article.setCreateTime(new Date());
            article.setUserId(ContextUtils.getUserId(request));
            articleDao.create(article);
        } else {
            articleDao.update(article);
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ModelAndView getArticle(@PathVariable(value = "id") String id) {
        Article article = articleDao.find(id);
        if (null == article) {
            return new ModelAndView("/misc/404");
        }
        ModelAndView modelAndView = new ModelAndView("/article/details");
        modelAndView.addObject("article", article);
        return modelAndView;
    }
}
