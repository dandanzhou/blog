package com.daisydan.blog.security;

import java.lang.annotation.*;

/**
 * Need login to view/trigger action or resources no matter what privilege
 *
 */
@Documented
@Retention(value = RetentionPolicy.RUNTIME)
@Target(value = {ElementType.TYPE, ElementType.METHOD})
public @interface LoginRequired {
}
