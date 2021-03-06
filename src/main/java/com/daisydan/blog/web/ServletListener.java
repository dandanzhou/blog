package com.daisydan.blog.web;

import com.daisydan.blog.enums.ArticleType;
import com.daisydan.blog.utils.ApplicationUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Web application lifecycle listener.
 * <p/>
 */

@WebListener
public class ServletListener implements ServletContextListener {

    @Autowired
    private ApplicationUtils appUtils;


    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        WebApplicationContextUtils
                .getRequiredWebApplicationContext(servletContextEvent.getServletContext())
                .getAutowireCapableBeanFactory()
                .autowireBean(this);

        ServletContext context = servletContextEvent.getServletContext();
        context.setAttribute("appName", "Skeleton");
        context.setAttribute(ArticleType.class.getSimpleName(), ArticleType.values());
        context.setAttribute("appUtils",appUtils);

    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
