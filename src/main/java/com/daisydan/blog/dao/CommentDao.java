package com.daisydan.blog.dao;


import com.daisydan.blog.entity.Comment;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class CommentDao extends BaseDao<Comment> {

    public CommentDao() {
        super(Comment.class);
    }


    public List<Comment> listByArticleId(String articleId) {
        Query query = getCurrentSession().createQuery("from Comment as comment where comment.articleId = :articleId order by comment.createTime desc");
        query.setString("articleId", articleId);
        return query.list();
    }


}
