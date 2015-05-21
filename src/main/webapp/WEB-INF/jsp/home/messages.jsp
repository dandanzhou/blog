<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>留言板-果丹皮的博客</title>
    <%@include file="../common/head.jspf" %>
    <c:choose>
        <c:when test="${dev_mode}">
            <link href="${pageContext.request.contextPath}/assets/css/pages/about.css" rel="stylesheet"/>
            <link href="${pageContext.request.contextPath}/assets/css/pages/details.css" rel="stylesheet"/>
        </c:when>
        <c:otherwise>
            <link href="${pageContext.request.contextPath}/assets/css/pages/about.min.css" rel="stylesheet"/>
            <link href="${pageContext.request.contextPath}/assets/css/pages/details.min.css" rel="stylesheet"/>
        </c:otherwise>
    </c:choose>
</head>
<body>
</body>
<%@include file="../common/topNav.jspf" %>
<div class="main-part">
    <div class="container">
        <%@include file="common/head.jsp" %>
        <div class="part2">
            <div class="margin-top-20"></div>
            <div class="pull-left">
                <div class="margin-top-20"></div>
                <div id="main">
                    <article class="page">
                        <h1 class="title">留言板</h1>

                        <div class="entry alpha-post">
                            <p>对我有什么好的建议或意见，请留言或发我QQ(2205502584)。</p>

                            <p>欢迎优秀的博客来和我做朋友。</p>

                            <h5>我的信息如下：</h5>
                            <ul>
                                <li>名称：果丹皮 的博客</li>
                                <li>描述：不止关注 Web 前端开发</li>
                                <li>github链接：
                                    <a title="https://github.com/dandanzhou" href="https://github.com/dandanzhou" target="_blank">https://github.com/dandanzhou</a>
                                </li>
                            </ul>
                        </div>
                    </article>
                    <div class="margin-top-30"></div>
                    <div id="comments">
                        <h4>共${appUtils.getCommentCount()}条评论</h4>
                        <ol class="comment-list">
                            <c:forEach items="${comments}" var="comment">
                                <li class="comment by-author parent">
                                    <div class="comment-body clearfix">
                                        <a class="comment-author"
                                           rel="external nofollow">
                                            <span class="author">${appUtils.getUserNameById(comment.userId)}</span>
                                        </a>

                                        <div class="comment-main">
                                            <div class="comment-box">
                                                <div class="comment-content">
                                                        ${comment.content}
                                                </div>
                                                <p class="comment-meta">
                                                    <span>${comment.createTime}</span>
                                                    <span></span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ol>
                    </div>
                </div>
            </div>
            <div class="pull-left">
                <%@include file="../common/sidebar.jsp" %>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="margin-top-30"></div>
    </div>
</div>

<%@include file="../common/footer.jspf" %>

</html>
