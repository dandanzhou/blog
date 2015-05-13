<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>留言板-果丹皮的博客</title>
  <%@include file="../common/head.jspf" %>
  <c:choose>
    <c:when test="${dev_mode}">
      <link href="${pageContext.request.contextPath}/assets/css/pages/about.css" rel="stylesheet"/>
    </c:when>
    <c:otherwise>
      <link href="${pageContext.request.contextPath}/assets/css/pages/about.min.css" rel="stylesheet"/>
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
              <p>对我有什么好的建议或意见，请留言，或直接 <a href="http://blog.daisydan.com/about">联系我</a>。</p>
              <p>欢迎优秀的博客来和我做朋友。</p>

              <h5>我的信息如下：</h5>
              <ul>
                <li>名称：果丹皮 的博客</li>
                <li>链接：<a title="http://blog.daisydan.com/" href="http://blog.daisydan.com/">http://blog.daisydan.com/</a></li>
                <li>描述：不止关注 Web 前端开发</li>
              </ul></div>
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
