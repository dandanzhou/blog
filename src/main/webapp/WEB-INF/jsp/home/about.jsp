<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>About-果丹皮的博客</title>
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
            <h1 class="title">About</h1>
            <div class="entry alpha-post">

              <h4>关于本站</h4>
              <p>本博客诞生于 2015 年 5 月 20 日，是我自己记录我自己在 Web 开发方面的一些原创文章，或者我自己的经验分享、生活状态等信息的个人博客。
                 志在通过本博客结识更多的志同道合的朋友，共同进步。
              </p>
              <p>本站现在使用<a href="http://getbootstrap.com/">BootStrap</a>搭建的前端框架；</p>

              <h4>关于我</h4>
              <p>果丹皮，或者可以叫我 丹丹，90后，Web 前端开发，爱好计算机，爱好互联网；会点 Photoshop；有时候也做做设计，志在掌握 Web 产品的每个环节；大家可以通过邮箱和博客留言的方式联系我。</p>

              <h5>关于头像</h5>
              <p>留言后会根据电子邮件地址自动匹配头像，并显示在留言窗口的左侧。如想使用此功能需要在 <a href="http://www.gravatar.com/" target="_blank">Gravatar</a>
                注册并上传头像。之后，凡是支持 <strong>Gravatar</strong> 的地方都可以显示你的头像。
              </p>

              <h5>关于留言</h5>
              <p>本站会尊重每一条留言。除广告和恶意留言外，不会删除留言。如果你的留言没有显示，请稍等，我们会人工审核。</p>

              <h4>联系方式</h4>
              <ul style="list-style-type:none">
                <li style="margin: 10px 0;">联系邮箱：daisyzhou@gmail.com；</li>
                <li style="margin: 10px 0;">联系 QQ：<a href="http://sighttp.qq.com/authd?IDKEY=73fbb92445ecb0857a17b0784b5c2b5c12239ddf8fe91e2a" target="_blank">点这里给我发消息</a>；</li>
                <li style="margin: 10px 0;">网页留言：<a title="留言版" href="http://blog.daisydan.com/messages">http://blog.daisydan.com/messages</a>；</li>
                <li style="margin: 10px 0;">所有文章列表：<a href="http://blog.daisydan.com/sitemap" title="Rss订阅">http://blog.daisydan.com/sitemap</a>；</li>
              </ul>
            </div>
          </article>
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
