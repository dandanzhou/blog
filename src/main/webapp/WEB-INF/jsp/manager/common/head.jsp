<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-2.1.1.min.js"></script>
<script>
  $(function(){
    $(".user-sidebar").mouseout(function(){
      $("#content1").hide();
    });
    $(".user-sidebar").mouseover(function(){
      $("#content1").show();
    });
  })
</script>
<link href="${pageContext.request.contextPath}/assets/css/pages/user-sidebar.min.css" rel="stylesheet"/>
<div class="user-sidebar">
  <div id="title1" class="pull-left"><img src="../assets/images/write.png" style="margin-right: 10px;"> 文章管理<span class="arrow icon-angle-down"></span></div>
  <div id="content1" class="pull-left" style="display:none">
    <ul class="list-inline">
      <li><a href="user-index">所有文章</a></li>
      <li><a href="write">写文章</a></li>
    </ul>
  </div>
  <div class="clearfix"></div>
</div>