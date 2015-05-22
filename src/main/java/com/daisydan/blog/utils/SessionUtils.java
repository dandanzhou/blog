package com.daisydan.blog.utils;

import com.daisydan.blog.entity.User;
import lombok.Data;

@Data
public class SessionUtils {

    /**
     * The current login user.
     */
    private User user;


}
