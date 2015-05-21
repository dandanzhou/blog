package com.daisydan.blog.controller;

import com.daisydan.blog.dao.ArticleDao;
import com.daisydan.blog.dao.CommentDao;
import com.daisydan.blog.entity.Article;
import com.daisydan.blog.entity.Comment;
import com.daisydan.blog.entity.User;
import com.daisydan.blog.rest.RestData;
import com.daisydan.blog.utils.ContextUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.HtmlUtils;

import java.util.Date;


/**
 * Created by veryyoung-rmbbox on 2015/5/21.
 */
@Controller
@RequestMapping("/comment")
public class CommentController extends BaseController {

    @Autowired
    private CommentDao commentDao;

    @Autowired
    private ArticleDao articleDao;

    @RequestMapping(value = "/post", method = RequestMethod.POST)
    public ModelAndView getComments(Comment comment) {
        ModelAndView modelAndView = new ModelAndView("redirect:/article/" + comment.getArticleId());
        if (StringUtils.isEmpty(ContextUtils.getUserId(request))) {
            modelAndView.addObject("error", "登陆后才能发布评论");
            return modelAndView;
        }
        comment.setUserId(ContextUtils.getUserId(request));
        comment.setCreateTime(new Date());
        comment.setContent(HtmlUtils.htmlEscape(comment.getContent()));
        commentDao.create(comment);
        Article article = articleDao.find(comment.getArticleId());
        article.setCommentCount(article.getCommentCount() + 1);
        articleDao.update(article);
        return modelAndView;
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public RestData deleteComment(String id) {
        Comment comment = commentDao.find(id);
        RestData restData = new RestData();
        if (null == comment) {
            restData.setComment("该评论不存在哦！");
            return restData;
        }
        User currentUser = ContextUtils.getUser(request);
        if (null == currentUser) {
            restData.setComment("您还未登陆哦！");
            return restData;
        }
        Article article = articleDao.find(comment.getArticleId());
        article.setCommentCount(article.getCommentCount() - 1);
        articleDao.update(article);
        commentDao.delete(comment);
        restData.setSuccess(1);
        return restData;

    }
}