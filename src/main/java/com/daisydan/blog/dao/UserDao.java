package com.daisydan.blog.dao;


import com.daisydan.blog.entity.User;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao extends BaseDao<User> {

    public UserDao() {
        super(User.class);
    }


    public boolean checkUserName(String userName) {
        Query query = getCurrentSession().createQuery("select count(*) from User as user where user.userName = :userName");
        query.setString("userName", userName);
        return (Long) query.uniqueResult() == 0;
    }

    public User findByUserName(String userName) {
        Query query = getCurrentSession().createQuery("from User as user where user.userName = :userName");
        query.setString("userName", userName);
        return (User) query.uniqueResult();
    }


}
