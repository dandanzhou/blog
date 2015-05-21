<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页-果丹皮的博客</title>
    <%@include file="common/head.jspf" %>
    <c:choose>
        <c:when test="${dev_mode}">
            <link href="${pageContext.request.contextPath}/assets/css/pages/index.css" rel="stylesheet"/>
            <link href="${pageContext.request.contextPath}/assets/css/pages/date.css" rel="stylesheet"/>
        </c:when>
        <c:otherwise>
            <link href="${pageContext.request.contextPath}/assets/css/pages/index.min.css" rel="stylesheet"/>
            <link href="${pageContext.request.contextPath}/assets/css/pages/date.min.css" rel="stylesheet"/>
        </c:otherwise>
    </c:choose>
</head>
<body>
<%@include file="common/topNav.jspf" %>
<div class="main-part">
    <div class="container">
        <%@include file="home/common/head.jsp" %>
        <div class="part2">
            <div class="margin-top-20"></div>
            <div class="pull-left">
                <div class="margin-top-20"></div>
                <div id="main">
                    <c:forEach var="article" items="${pageInfo.resultList}">
                        <section class="post">
                            <h1 class="title"><a href="/article/${article.id}"
                                                 title="${article.title}">${article.title}</a></h1>
                            <a class="post-date" href="/article/${article.id}">
                                <span class="month"><fmt:formatDate value="${article.createTime}" pattern="MM"/></span>
                                <span class="day"><fmt:formatDate value="${article.createTime}" pattern="dd"/></span>
                            </a>

                            <div class="alpha-post">
                                    ${fn:substring(article.content,0,200)}
                            </div>
                            <p class="meta">
                                <ins class="icon icon-comment"></ins>
                            <span class="comment">
                                <a href="/article/${article.id}#comments">${article.commentCount} 条评论</a>
                            </span>

                                <ins class="icon icon-view"></ins>
                                <span class="more">
                                    <ins class="icon icon-more"></ins>
                                    <a href="/article/${article.id}" title="${article.title}">阅读全文</a>
                                </span>
                            </p>
                        </section>
                    </c:forEach>
                    <div class="margin-left-30 margin-top-30">
                        <ul id="paginator"></ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="pull-left">
                <%@include file="common/sidebar.jsp" %>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="margin-top-30"></div>
    </div>
</div>

<%@include file="common/footer.jspf" %>
</body>
<script type="text/javascript">
    seajs.use("pages/index", function (index) {
        index.init(${pageInfo.pageNo}, ${pageInfo.totalPages});
    });
</script>
</html>
