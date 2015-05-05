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
  <div class="serach" id="search-box">
    <div class="widget-content">
      <form id="search" method="post" action="/">
        <fieldset>
          <input type="text" name="s" class="text" placeholder="搜索 Search" autocomplete="off">
          <button type="submit"><img src="../assets/images/search.png"></button>
        </fieldset>
      </form>
    </div>
  </div>
  <div class="tag">
    <div class="green1">标签云</div>
    <div class="some">
      <div id="div1">
        <a href="http://www.51xuediannao.com">jquery特效</a>
        <a href="http://www.51xuediannao.com" class="red">网页特效</a>
        <a href="http://www.51xuediannao.com">网页欣赏</a>
        <a href="http://www.51xuediannao.com" class="red">导航菜单</a>
        <a href="http://www.51xuediannao.com" class="blue">懒人建站</a>
        <a href="http://www.51xuediannao.com" class="red">网页特效</a>
        <a href="http://www.51xuediannao.com" class="yellow">JavaScript</a>
        <a href="http://www.51xuediannao.com">jquery</a>
        <a href="http://www.51xuediannao.com" class="red">CSS</a>
        <a href="http://www.51xuediannao.com">jquery特效</a>
        <a href="http://www.51xuediannao.com">jquery特效</a>
        <a href="http://www.51xuediannao.com" class="blue">CSS技巧</a>
        <a href="http://www.51xuediannao.com">焦点幻灯片</a>
        <a href="http://www.51xuediannao.com" class="blue">导航菜单</a>
        <a href="http://www.51xuediannao.com">jquery</a>
        <a href="http://www.51xuediannao.com" class="blue">懒人建站</a>
        <a href="http://www.51xuediannao.com" class="yellow">网页特效</a>
        <a href="http://www.51xuediannao.com" class="blue">懒人建站</a>
      </div>
    </div>
  </div>
  <div class="discuss">
    <div class="green1">公告信息</div>
    <div class="some"></div>
  </div>
  <div class="fr-link">
    <div class="green1">友情链接</div>
    <div class="some">
      <ul>
        <li><a href="http://veryyoung.me/" target="_blank">● veryyoung</a></li>
        <li><a href="http://www.minishine.com/" target="_blank">● 路人戊</a></li>
        <li><a href="http://www.zhenghang.info/" target="_blank">● coco</a></li>
      </ul>
    </div>
  </div>
  <div class="count">
    <div class="green1">网站统计</div>
    <div class="some">
      <ul>
        <li>● 建站日期 ： </li>
        <li>● 运行天数 ： </li>
        <li>● 文章统计 ： </li>
        <li>● 最后发表 ： </li>
        <li>● 评论统计 ： </li>
      </ul>
    </div>
  </div>
</div>
<script type="text/javascript">
  seajs.use("pages/tags");
</script>

