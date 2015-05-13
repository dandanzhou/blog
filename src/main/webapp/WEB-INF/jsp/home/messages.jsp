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
              <p>对我有什么好的建议或意见，请留言，或直接 <a href="http://blog.daisydan.com/about">联系我</a>。</p>
              <p>欢迎优秀的博客来和我做朋友。</p>

              <h5>我的信息如下：</h5>
              <ul>
                <li>名称：果丹皮 的博客</li>
                <li>链接：<a title="http://blog.daisydan.com/" href="http://blog.daisydan.com/">http://blog.daisydan.com/</a></li>
                <li>描述：不止关注 Web 前端开发</li>
              </ul>
            </div>
          </article>
          <div class="margin-top-30"></div>
          <div id="comments">
            <h4>共6条评论</h4>
            <ol class="comment-list">
              <li class="comment by-author parent">
                <div class="comment-body clearfix">
                  <a class="comment-author" title="雨帆" href="http://yufan.me" target="_blank" rel="external nofollow">
                    <img class="avatar" src="//dn-astc.qbox.me/avatar/58d353436ca3157a1d9f8f4325a41810.60" alt="雨帆" width="60" height="60">                <span class="author">雨帆</span>
                  </a>
                  <div class="comment-main">
                    <div class="comment-box">
                      <div class="comment-content">虽然第一次来就要友链会有点突兀，但是个人比较崇拜技术流，所以我就给博主加上了，博主要是觉得我的网站你也喜欢，就看着加吧。 :mrgreen:  :mrgreen:  :mrgreen:</div>
                      <p class="comment-meta">
                        <span><a href="#reply-253">回复</a></span>
                        <span>2011-12-02 11:06</span>
                        <span></span>
                      </p>
                    </div>
                  </div>
                </div>
                <ul class="children">
                  <li class="comment by-user child">
                    <div class="comment-body clearfix">
                      <a class="comment-author" title="AlphaTr" href="#" target="_blank" rel="external nofollow">
                        <img class="avatar" src="//dn-astc.qbox.me/avatar/472e0d571d4b53c25911388cd864c14e.60" alt="AlphaTr" width="60" height="60">                <span class="author">AlphaTr</span>
                      </a>
                      <div class="comment-main">
                        <div class="comment-box">
                          <div class="comment-content">嗯，你的站也很好，添加友链了。。</div>
                          <p class="comment-meta">
                            <span><a href="#reply-254">回复</a></span>
                            <span>2011-12-02 13:03</span>
                            <span></span>
                          </p>
                        </div>
                      </div>
                    </div>
                    <ul class="children">
                      <li class="comment by-author child">
                        <div class="comment-body clearfix">
                          <a class="comment-author" title="雨帆" href="http://yufan.me" target="_blank" rel="external nofollow">
                            <img class="avatar" src="//dn-astc.qbox.me/avatar/58d353436ca3157a1d9f8f4325a41810.60" alt="雨帆" width="60" height="60">                <span class="author">雨帆</span>
                          </a>
                          <div class="comment-main">
                            <div class="comment-box">
                              <div class="comment-content">时隔一年后来此吼吼，我又换回老域名啦=W= 求修改啦</div>
                              <p class="comment-meta">
                                <span></span>
                                <span>2013-01-02 12:14</span>
                                <span></span>
                              </p>
                            </div>
                          </div>
                        </div>
                        <ul class="children"></ul>
                      </li>
                      <li class="comment by-user child">
                        <div class="comment-body clearfix">
                          <a class="comment-author" title="AlphaTr" href="http://blog.alphatr.com/" target="_blank" rel="external nofollow">
                            <img class="avatar" src="//dn-astc.qbox.me/avatar/33b7fc62c92527a5d1fdedf1304066c3.60" alt="AlphaTr" width="60" height="60">                <span class="author">AlphaTr</span>
                          </a>
                          <div class="comment-main">
                            <div class="comment-box">
                              <div class="comment-content">好的，已经添加了~~</div>
                              <p class="comment-meta">
                                <span></span>
                                <span>2013-01-04 08:55</span>
                                <span></span>
                              </p>
                            </div>
                          </div>
                        </div>
                        <ul class="children"></ul>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
            </ol>
          </div>
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
