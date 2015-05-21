package com.daisydan.blog.dao;


import org.dom4j.Comment;
import org.springframework.stereotype.Repository;


/**
 * Created by veryyoung on 2015/521.
 */

@Repository
public class CommentDao extends BaseDao<Comment> {

    public CommentDao() {
        super(Comment.class);
    }


}
