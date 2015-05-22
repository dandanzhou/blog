package com.daisydan.blog.service;

import com.daisydan.blog.entity.User;

import java.util.List;

public interface UserService {

    public void create(User user);

    public List<User> findAll();
}
