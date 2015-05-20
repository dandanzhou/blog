package com.daisydan.blog.dao;


import com.daisydan.blog.entity.Article;
import com.daisydan.blog.enums.ArticleType;
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

    public int countByType(ArticleType type) {
        Query query = getCurrentSession().createQuery("select count(*) from Article as article where article.type = :type");
        query.setInteger("type", type.ordinal());
        return ((Long) query.uniqueResult()).intValue();
    }

}
