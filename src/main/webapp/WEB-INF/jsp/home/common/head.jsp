<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${dev_mode}">
        <link href="${pageContext.request.contextPath}/assets/css/pages/background.css" rel="stylesheet"/>
    </c:when>
    <c:otherwise>
        <link href="${pageContext.request.contextPath}/assets/css/pages/background.min.css" rel="stylesheet"/>
    </c:otherwise>
</c:choose>

<div class="wrapper">
    <div class="container">
        <div class="part1">
            <div class="margin-top-30"></div>
            <div class="col-md-4 title">果丹皮的博客</div>
            <div class="col-md-8">
                <div class="margin-top-20"></div>
                <div class="link">
                    <div class="col-sm-2"><a href="/about">About</a></div>
                    <div class="col-sm-2"><a href="/">Home</a></div>
                    <div class="col-sm-8"><a href="/messages">留言板</a></div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>