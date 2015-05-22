package com.daisydan.blog.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public abstract class BaseService {

    protected Logger logger = null;

    public BaseService() {
        logger = LoggerFactory.getLogger(getClass().getName());
    }
}
