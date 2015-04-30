package com.daisydan.blog.utils;

import com.daisydan.blog.entity.User;
import lombok.Data;

/**
 * Created by veryyoung on 2015/4/23.
 */
@Data
public class SessionUtils {

    /**
     * The current login user.
     */
    private User user;


}
