<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
  <title>写文章</title>
  <%@include file="../common/head.jspf" %>
  <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.qeditor.css" type="text/css">
  <style type="text/css" media="screen">
    .textarea {
      background-color: #ffffff;
      border: 1px solid #cccccc;
      -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
      -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
      box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
      -webkit-transition: border linear .2s, box-shadow linear .2s;
      -moz-transition: border linear .2s, box-shadow linear .2s;
      -o-transition: border linear .2s, box-shadow linear .2s;
      transition: border linear .2s, box-shadow linear .2s;
      padding: 4px 6px;
      font-size: 14px;
      line-height: 20px;
      color: #555555;
      -webkit-border-radius: 4px;
      -moz-border-radius: 4px;
      border-radius: 4px;
      vertical-align: middle;
      outline: none;
      height: 400px;
    }
  </style>

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
      <div class="pull-left wrap">
        <h2><img src="../assets/images/write.png" style="margin-right: 10px;">撰写新文章</h2>
        <div class="margin-top-10"></div>
        <form name="post" action="" method="post" id="post">
            <div class="control-group">
                <label class="col-sm-1 control-label">Title:</label>
                <div class="col-sm-11 controls">
                    <input type="text" id="title" placeholder="Type your title">
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="margin-top-20"></div>
            <div class="control-group">
                <label class="col-sm-1 control-label" for="post_body">Body</label>
                <div class="col-sm-11 controls">
                    <textarea id="post_body" name="body" class="textarea" placeholder="Type your post"></textarea>
                </div>
                <div class="clearfix"></div>
            </div>
        </form>
      </div>

      <div class="pull-left pub">
          <div class="pub1">
              <div class="pub1-title">文章发布</div>
              <div class="pub1-content">
                  <form>
                      <fieldset data-role="controlgroup">
                          <div class="row1">
                              <input type="checkbox" name="checkbox-1a" id="checkbox-1a" class="custom" />
                              <label for="checkbox-1a">置顶</label>
                              <span><a href="" >编辑</a></span>
                          </div>
                          <div class="row2">
                              <input type="checkbox" name="checkbox-2a" id="checkbox-2a" class="custom" />
                              <label for="checkbox-2a">可见</label>
                              <span><a href="">编辑</a></span>
                          </div>
                      </fieldset>
                      <div class="rotted"></div>
                      <div class="pub2-title">文章分类</div>
                      <fieldset data-role="controlgroup">
                          <div class="col-sm-6">
                              <div class="row1">
                                  <input type="radio" name="radio-1b" id="radio-1b" class="custom" />
                                  <label for="radio-1b"> HTML </label>
                              </div>
                              <div class="row2">
                                  <input type="radio" name="radio-1b" id="radio-2b" class="custom" />
                                  <label for="radio-2b"> CSS </label>
                              </div>
                              <div class="row3">
                                  <input type="radio" name="radio-1b" id="radio-3b" class="custom" />
                                  <label for="radio-3b"> HTML </label>
                              </div>
                              <div class="row4">
                                  <input type="radio" name="radio-1b" id="radio-4b" class="custom" />
                                  <label for="radio-4b"> CSS </label>
                              </div>
                          </div>
                          <div class="col-sm-6">
                              <div class="row5">
                                  <input type="radio" name="radio-1b" id="radio-5b" class="custom" />
                                  <label for="radio-5b"> HTML </label>
                              </div>
                              <div class="row6">
                                  <input type="radio" name="radio-1b" id="radio-6b" class="custom" />
                                  <label for="radio-6b"> CSS </label>
                              </div>
                              <div class="row7">
                                  <input type="radio" name="radio-1b" id="radio-7b" class="custom" />
                                  <label for="radio-7b"> CSS </label>
                              </div>
                          </div>
                          <div class="clearfix"></div>
                  </form>
              </div>
              <div class="cli-pub1">
                  <button id="pre-see" class="col-sm-5">预览</button>
                  <div class="col-sm-1"></div>
                  <button id="publish" class="col-sm-5">发布</button>
                  <div class="clearfix"></div>
              </div>
          </div>
          <%--<div class="margin-top-30"></div>--%>
          <%--<div class="pub2">--%>
              <%--<div class="pub2-title">文章分类</div>--%>
              <%--<div class="pub1-content">--%>
                  <%--<form>--%>
                      <%--<fieldset data-role="controlgroup">--%>
                          <%--<div class="row1">--%>
                              <%--<input type="radio" name="radio-1b" id="radio-1b" class="custom" />--%>
                              <%--<label for="radio-1b"> HTML </label>--%>
                          <%--</div>--%>
                          <%--<div class="row2">--%>
                              <%--<input type="radio" name="radio-1b" id="radio-2b" class="custom" />--%>
                              <%--<label for="radio-2b"> CSS </label>--%>
                          <%--</div>--%>
                          <%--<div class="row3">--%>
                              <%--<input type="radio" name="radio-1b" id="radio-3b" class="custom" />--%>
                              <%--<label for="radio-3b"> HTML </label>--%>
                          <%--</div>--%>
                          <%--<div class="row4">--%>
                              <%--<input type="radio" name="radio-1b" id="radio-4b" class="custom" />--%>
                              <%--<label for="radio-4b"> CSS </label>--%>
                          <%--</div>--%>
                          <%--<div class="row5">--%>
                              <%--<input type="radio" name="radio-1b" id="radio-5b" class="custom" />--%>
                              <%--<label for="radio-5b"> HTML </label>--%>
                          <%--</div>--%>
                          <%--<div class="row6">--%>
                              <%--<input type="radio" name="radio-1b" id="radio-6b" class="custom" />--%>
                              <%--<label for="radio-6b"> CSS </label>--%>
                          <%--</div>--%>
                          <%--<div class="row7">--%>
                              <%--<input type="radio" name="radio-1b" id="radio-7b" class="custom" />--%>
                              <%--<label for="radio-7b"> CSS </label>--%>
                          <%--</div>--%>


                      <%--</fieldset>--%>
                  <%--</form>--%>
              <%--</div>--%>
          <%--</div>--%>
      </div>

      <div class="clearfix"></div>
    </div>
  </div>
</div>

<script type="text/javascript" src="assets/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.qeditor.js"></script>
<script type="text/javascript">
  $("#post_body").qeditor({});

  // Custom a toolbar icon
  var toolbar = $("#post_body").parent().find(".qeditor_toolbar");
  var link = $("<a href='#'><span class='icon-smile' title='smile'></span></a>");
  link.click(function(){
    alert("Put you custom toolbar event in here.");
    return false;
  });
  toolbar.append(link);

  // Custom Insert Image icon event
  function changeInsertImageIconWithCustomEvent() {
    var link = toolbar.find("a.qe-image");
    link.attr("data-action","");
    link.click(function(e){
      alert("New insert image event");
      return false;
    });
    alert("Image icon event has changed, you can click it to test");
    return false;
  }

  $("#submit").click(function(){
    alert($("#post_body").val());
  });
</script>

</body>
</html>
