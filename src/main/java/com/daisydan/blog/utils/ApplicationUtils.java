package com.daisydan.blog.utils;

import com.daisydan.blog.dao.ArticleDao;
import com.daisydan.blog.dao.CommentDao;
import com.daisydan.blog.enums.ArticleType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * 辅助jstl取值
 * <p>
 * Created by veryyoung on 2015/5/20.
 */
@Service
public class ApplicationUtils {

    @Autowired
    private ArticleDao articleDao;

    @Autowired
    private CommentDao commentDao;

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
}
