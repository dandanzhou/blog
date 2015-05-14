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
    <div class="margin-top-10"></div>
    <div class="main-part">
        <div class="user-title">用户后台管理</div>
        <div class="manager">
            <div class="col-md-2">
                <%@include file="manager/common/sidebar.jsp" %>
            </div>
            <div class="col-md-10"></div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="margin-top-30"></div>
</div>
<%@include file="common/footer.jspf" %>
</body>
</html>
