package com.daisydan.blog.utils;

import com.daisydan.blog.dao.ArticleDao;
import com.daisydan.blog.dao.CommentDao;
import com.daisydan.blog.dao.UserDao;
import com.daisydan.blog.entity.Article;
import com.daisydan.blog.enums.ArticleType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 辅助jstl取值
 * <p>
 */
@Service
public class ApplicationUtils {

    @Autowired
    private ArticleDao articleDao;

    @Autowired
    private CommentDao commentDao;

    @Autowired
    private UserDao userDao;

    public int countByType(ArticleType type) {
        return articleDao.countByType(type);
    }

    public int countArticle() {
        return articleDao.count();
    }

    public Date getLastArticleTime() {
        return articleDao.getLastArticleTime();
    }

    public int getCommentCount() {
        return commentDao.count();
    }

    public List<Article> getHotArticle() {
        return articleDao.getHotArticle();
    }

    public String getUserNameById(String userId) {
        return userDao.find(userId).getUserName();
    }
}
