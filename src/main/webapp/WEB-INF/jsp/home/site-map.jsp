<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>网站地图-果丹皮的博客</title>
  <%@include file="../common/head.jspf" %>
</head>
<body>
</body>
<%@include file="../common/topNav.jspf" %>
<c:choose>
  <c:when test="${dev_mode}">
    <link href="${pageContext.request.contextPath}/assets/css/pages/about.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/assets/css/pages/site-map.css" rel="stylesheet"/>
  </c:when>
  <c:otherwise>
    <link href="${pageContext.request.contextPath}/assets/css/pages/about.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/assets/css/pages/site-map.min.css" rel="stylesheet"/>
  </c:otherwise>
</c:choose>
<div class="main-part">
  <div class="container">
    <%@include file="common/head.jsp" %>
    <div class="part2">
      <div class="margin-top-20"></div>
      <div class="pull-left">
        <div class="margin-top-20"></div>
        <div id="main">
          <article class="page">
            <h1 class="title">网站地图</h1>
            <div class="entry alpha-post">
              <!--文档归类开始-->
              <div class="archives">
                <h3>2014-10</h3>
                <ol>
                  <li>
                    <span class="time">10-26</span><a href="https://blog.alphatr.com/nginx-ssl-config.html">SSL 配置研究</a><small>(4)</small>
                  </li>
                </ol>
              </div>
              <div class="archives">
                <h3>2014-9</h3>
                <ol>
                  <li>
                    <span class="time">9-26</span><a href="https://blog.alphatr.com/nginx-ssl-config.html">SSL 配置研究</a><small>(4)</small>
                  </li>
                  <li>
                    <span class="time">9-20</span><a href="https://blog.alphatr.com/nginx-ssl-config.html">SSL 配置研究</a><small>(4)</small>
                  </li>
                </ol>
              </div>
            </div>
          </article>
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

<%@include file="../common/footer.jspf" %>

</html>
