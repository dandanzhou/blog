<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>写文章</title>
  <%@include file="../common/head.jspf" %>
  <c:choose>
    <c:when test="${dev_mode}">
      <link href="${pageContext.request.contextPath}/assets/css/pages/write.css" rel="stylesheet"/>
    </c:when>
    <c:otherwise>
      <link href="${pageContext.request.contextPath}/assets/css/pages/write.min.css" rel="stylesheet"/>
    </c:otherwise>
  </c:choose>
</head>
<body>
<%@include file="../common/topNav.jspf" %>
<div class="main">
  <div class="main-part">
    <%@include file="common/head.jsp" %>
    <div class="manager">
      <div class="pull-left">
        <%@include file="common/sidebar.jsp" %>
      </div>
      <div class="pull-left wrap">
        <h2><img src="../assets/images/write.png" style="margin-right: 10px;">撰写新文章</h2>
      </div>
    </div>
  </div>
</div>

</body>
</html>
