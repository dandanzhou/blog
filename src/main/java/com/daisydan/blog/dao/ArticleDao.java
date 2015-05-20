package com.daisydan.blog.dao;


import com.daisydan.blog.entity.Article;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * Created by veryyoung on 2015/3/3.
 */

@Repository
public class ArticleDao extends BaseDao<Article> {

    public ArticleDao() {
        super(Article.class);
    }

    public List<Article> list(int start, int end) {
        Query query = getCurrentSession().createQuery("from Article as article order by article.top,article.createTime desc");
        query.setFirstResult(start);
        query.setMaxResults(end);
        return query.list();
    }

}
