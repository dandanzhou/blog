<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${article.title}-果丹皮的博客</title>
    <%@include file="../common/head.jspf" %>
    <c:choose>
        <c:when test="${dev_mode}">
            <link href="${pageContext.request.contextPath}/assets/css/pages/details.css" rel="stylesheet"/>
            <link href="${pageContext.request.contextPath}/assets/css/pages/date.css" rel="stylesheet"/>
        </c:when>
        <c:otherwise>
            <link href="${pageContext.request.contextPath}/assets/css/pages/details.min.css" rel="stylesheet"/>
            <link href="${pageContext.request.contextPath}/assets/css/pages/date.min.css" rel="stylesheet"/>
        </c:otherwise>
    </c:choose>
</head>
<body>
<%@include file="../common/topNav.jspf" %>
<div class="main-part">
    <div class="container">
        <%@include file="../home/common/head.jsp" %>
        <div class="part2">
            <div class="margin-top-20"></div>
            <div class="pull-left">
                <div class="margin-top-20"></div>
                <div id="main">
                    <article class="post">
                        <h1 class="article-title">${article.title}</h1>
                        <a class="post-date" href="/article/${article.id}"
                           title="<fmt:formatDate value="${article.createTime}" pattern="YYYY-MM-dd"/>">
                            <span class="month"><fmt:formatDate value="${article.createTime}" pattern="MM"/></span>
                            <span class="day"><fmt:formatDate value="${article.createTime}" pattern="dd"/></span>
                        </a>

                        <div class="entry alpha-post">
                            ${article.content}
                        </div>

                        <div class="meta-bottom meta">
                            <p>本文固定链接: <a href="/article/${article.id}"
                                          title="${article.title}">${article.title}</a></p>

                            <p>转载请注明: <a href="/article/${article.id}"
                                         title="${article.title}">${article.title}</a> | <a
                                    href="/">果丹皮 的博客</a></p>
                        </div>
                    </article>
                    <div id="comments">
                        <h4>仅 1 条评论</h4>
                        <ol class="comment-list">
                            <li class="comment by-user parent">
                                <div class="comment-body clearfix">
                                    <a class="comment-author" title="少壮" href="http://shaozhuang.me" target="_blank"
                                       rel="external nofollow">
                                        <img class="avatar"
                                             src="//dn-astc.qbox.me/avatar/b0d4c88baf0ebdf9b724fcd6694082de.60" alt="少壮"
                                             width="60" height="60"> <span class="author">少壮</span>
                                    </a>

                                    <div class="comment-main">
                                        <div class="comment-box">
                                            <div class="comment-content">学习一下～</div>
                                            <p class="comment-meta">
                                                <span><a href="#reply-2396">回复</a></span>
                                                <span>2014-10-26 14:09</span>
                                                <span></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <ul class="children"></ul>
                            </li>
                        </ol>
                        <div class="margin-top-30"></div>
                        <div id="comment-form">
                            <h3 class="response">发表评论
                                <small><a id="cancel-comment-reply-link"
                                          href="https://blog.alphatr.com/my-web-dev-environment-1.html" rel="nofollow"
                                          style="display:none">取消回复</a></small>
                            </h3>
                            <form method="post" action="https://blog.alphatr.com/my-web-dev-environment-1.html/comment"
                                  novalidate="">
                                <div class="form-cell text">
                                    <textarea name="text" type="chinese" required=""></textarea>
                                </div>
                                <div class="form-cell submit">
                                    <span class="form-tips"></span>
                                    <button type="submit" name="submit" disabled="">发表评论</button>
                                </div>
                            </form>
              <textarea id="comment-tpl" style="display: none;">
                &lt;li class="{$cls}"&gt;
                &lt;div class="comment-body clearfix"&gt;
                    &lt;a class="comment-author" title="{$author}" href="{$url}" target="_blank" rel="external nofollow"&gt;
                        &lt;img class="avatar" src="{$avatar}" alt="{$author}" width="60" height="60"&gt;
                        &lt;span class="author"&gt;{$author}&lt;/span&gt;
                    &lt;/a&gt;
                    &lt;div class="comment-main"&gt;
                        &lt;div class="comment-box"&gt;
                            &lt;div class="comment-content"&gt;{$text}&lt;/div&gt;
                            &lt;p class="comment-meta"&gt;
                                &lt;span&gt;{$reply}&lt;/span&gt;
                                &lt;span&gt;{$created}&lt;/span&gt;
                                &lt;span&gt;{$status}&lt;/span&gt;
                            &lt;/p&gt;
                        &lt;/div&gt;
                    &lt;/div&gt;
                &lt;/div&gt;
            &lt;/li&gt;
        </textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pull-left">
                <%@include file="../home/common/sidebar.jsp" %>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="margin-top-30"></div>
    </div>
</div>

<%@include file="../common/footer.jspf" %>

</body>
</html>
