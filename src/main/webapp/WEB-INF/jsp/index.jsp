<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>果丹皮</title>
    <%@include file="common/head.jspf" %>
    <c:choose>
        <c:when test="${dev_mode}">
            <link href="${pageContext.request.contextPath}/assets/css/pages/index.css" rel="stylesheet"/>
        </c:when>
        <c:otherwise>
            <link href="${pageContext.request.contextPath}/assets/css/pages/index.min.css" rel="stylesheet"/>
        </c:otherwise>
    </c:choose>
</head>
<body>
<%@include file="common/topNav.jspf" %>
<div class="main-part">
    <div class="container">
        <div class="part1">
            <div class="margin-top-30"></div>
            <div class="col-md-4 title">果丹皮的博客</div>
            <div class="col-md-8">
                <div class="margin-top-20"></div>
                <div class="link">
                    <div class="col-sm-2"><a href="http://veryyoung.me/" target="_blank">About</a></div>
                    <div class="col-sm-2"><a href="http://www.minishine.com/" target="_blank">网站地图</a></div>
                    <div class="col-sm-8"><a href="http://www.zhenghang.info/" target="_blank">留言板</a></div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="part2">
            <div class="margin-top-20"></div>
            <div class="col-md-8"></div>
            <div class="col-md-4">
                <div class="serach">
                </div>
                <div class="tag">
                    <div class="green1">标签云</div>
                    <div class="some"></div>
                </div>
                <div class="discuss">
                    <div class="green1">公告信息</div>
                    <div class="some"></div>
                </div>
                <div class="fr-link">
                    <div class="green1">友情链接</div>
                    <div class="some"></div>
                </div>
                <div class="count">
                    <div class="green1">网站统计</div>
                    <div class="some"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="margin-top-30"></div>
    </div>
</div>

<%@include file="common/footer.jspf" %>
</body>

</html>
