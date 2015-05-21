package com.daisydan.blog.dao;


import com.daisydan.blog.entity.Article;
import com.daisydan.blog.enums.ArticleType;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;


/**
 * Created by veryyoung on 2015/3/3.
 */

@Repository
public class ArticleDao extends BaseDao<Article> {

    public ArticleDao() {
        super(Article.class);
    }


    public int countByType(ArticleType type) {
        Query query = getCurrentSession().createQuery("select count(*) from Article as article where article.type = :type");
        query.setInteger("type", type.ordinal());
        return ((Long) query.uniqueResult()).intValue();
    }

    public Date getLastArticleTime() {
        Query query = getCurrentSession().createQuery("select createTime from Article as article order by createTime desc");
        query.setFirstResult(0);
        query.setMaxResults(1);
        return ((Date) query.uniqueResult());
    }

    public List<Article> getHotArticle() {
        Query query = getCurrentSession().createQuery("from Article as article order by article.commentCount desc,article.createTime desc");
        query.setFirstResult(0);
        query.setMaxResults(5);
        return query.list();
    }

    public List<Article> listBySearch(int start, int end, ArticleType type) {
        Criteria criteria = getCurrentSession().createCriteria(Article.class);
        if (null != type) {
            criteria.add(Restrictions.eq("type", type));
        }


        criteria.addOrder(Order.asc("top"));
        criteria.addOrder(Order.desc("createTime"));
//        if (StringUtils.isNotEmpty(key)) {
//            criteria.add(Restrictions.disjunction()
//                            .add(Restrictions.like("title", "%".concat(key).concat("%")))
//                            .add(Restrictions.like("originalTitle", "%".concat(key).concat("%")))
//                            .add(Restrictions.like("casts", "%".concat(key).concat("%")))
//                            .add(Restrictions.like("directors", "%".concat(key).concat("%")))
//                            .add(Restrictions.like("writers", "%".concat(key).concat("%")))
//
//            );
//        }
        criteria.setFirstResult(start);
        criteria.setMaxResults(end);
        return criteria.list();
    }

    public int countBySearch(ArticleType type) {
        Criteria criteria = getCurrentSession().createCriteria(Article.class).setProjection(Projections.rowCount());
        if (null != type) {
            criteria.add(Restrictions.eq("type", type));
        }


//        if (StringUtils.isNotEmpty(key)) {
//            criteria.add(Restrictions.disjunction()
//                            .add(Restrictions.like("title", "%".concat(key).concat("%")))
//                            .add(Restrictions.like("originalTitle", "%".concat(key).concat("%")))
//                            .add(Restrictions.like("casts", "%".concat(key).concat("%")))
//                            .add(Restrictions.like("directors", "%".concat(key).concat("%")))
//                            .add(Restrictions.like("writers", "%".concat(key).concat("%")))
//            );
//        }
        Long count = (Long) (criteria.uniqueResult());
        return count.intValue();
    }

}
