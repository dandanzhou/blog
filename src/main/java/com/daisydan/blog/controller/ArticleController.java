package com.daisydan.blog.controller;

import com.daisydan.blog.dao.ArticleDao;
import com.daisydan.blog.dao.CommentDao;
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

    @Autowired
    private CommentDao commentDao;

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String getWrite() {
        return "/article/write";
    }


    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView getEidt(@PathVariable(value = "id") String id) {
        ModelAndView modelAndView = new ModelAndView("/article/write");
        modelAndView.addObject("article", articleDao.find(id));
        return modelAndView;
    }


    @RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
    public String saveOrUpdate(Article article) {
        if (StringUtils.isEmpty(article.getId())) {
            article.setCreateTime(new Date());
            article.setUserId(ContextUtils.getUserId(request));
            articleDao.create(article);
        } else {
            Article storedArticle = articleDao.find(article.getId());
            storedArticle.setContent(article.getContent());
            storedArticle.setTitle(article.getTitle());
            articleDao.update(storedArticle);
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ModelAndView getArticle(@PathVariable(value = "id") String id, String error) {
        Article article = articleDao.find(id);
        if (null == article) {
            return new ModelAndView("/misc/404");
        }
        ModelAndView modelAndView = new ModelAndView("/article/details");
        modelAndView.addObject("article", article);
        if (article.getCommentCount() > 0) {
            modelAndView.addObject("comments", commentDao.listByArticleId(id));
        }
        if (StringUtils.isNotEmpty(error)) {
            modelAndView.addObject("error", error);
        }
        return modelAndView;
    }


}
