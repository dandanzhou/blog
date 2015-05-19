package com.daisydan.blog.dao;


import com.daisydan.blog.entity.Article;
import org.springframework.stereotype.Repository;


/**
 * Created by veryyoung on 2015/3/3.
 */

@Repository
public class ArticleDao extends BaseDao<Article> {

    public ArticleDao() {
        super(Article.class);
    }

}
