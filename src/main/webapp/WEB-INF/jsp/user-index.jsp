<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>后台管理</title>
    <%@include file="common/head.jspf" %>
    <c:choose>
        <c:when test="${dev_mode}">
            <link href="${pageContext.request.contextPath}/assets/css/pages/user-index.css" rel="stylesheet"/>
        </c:when>
        <c:otherwise>
            <link href="${pageContext.request.contextPath}/assets/css/pages/user-index.min.css" rel="stylesheet"/>
        </c:otherwise>
    </c:choose>
</head>
<body>
<%@include file="common/topNav.jspf" %>
<div class="main">
    <div class="main-part">
        <%@include file="manager/common/head.jsp" %>
        <div class="manager">
            <div class="pull-left">
                <%@include file="manager/common/sidebar.jsp" %>
            </div>
            <div class="pull-left wrap">
                <h2><img src="../assets/images/write.png" style="margin-right: 10px;">文章<a href="write.jsp" class="add-new-h2">写文章</a> </h2>
                <ul class="sub">
                    <li class="all">
                        <a href="" class="current">全部<span class="count">（）</span>|</a>
                    </li>
                    <li class="publish">
                        <a href="">已发布<span class="count">（）</span></a>
                    </li>
                </ul>
                <form id="post-filter" action method="">
                    <p class="search-box">
                        <label class="screen-reader-text" for="post-search-input">搜索文章:</label>
                        <input type="search" id="post-search-input" name="s" value="">
                        <input type="submit" name="" id="search-submit" class="button" value="搜索文章"></p>
                    </p>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="margin-top-30"></div>
</div>
<%@include file="common/footer.jspf" %>
</body>
</html>
