<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-2.1.1.min.js"></script>
<script>
    $(function(){
        $('#title1').click(function(){
            $('#content1').toggle();

        })
        $('#title2').click(function(){
            $('#content2').toggle();

        })
        $('#title3').click(function(){
            $('#content3').toggle();

        })
        $('#title4').click(function(){
            $('#content4').toggle();

        })
    })
</script>
<link href="${pageContext.request.contextPath}/assets/css/pages/user-sidebar.min.css" rel="stylesheet"/>
<div class="user-sidebar">
    <div id=title1><img src="../assets/images/write.png" style="margin-right: 10px;"> 文章管理<span class="arrow icon-angle-down"></span></div>
    <div id=content1 style="display:none">
        <ul>
            <li><a href="user-index">所有文章</a></li>
            <li><a href="">写文章</a></li>
            <li><a href="">分类目录</a></li>
        </ul>
    </div>

    <div id=title2><img src="../assets/images/media.png" style="margin-right: 16px;">媒体管理</div>
    <div id=content2 style="display:none">
        <ul>
            <li><a href="">媒体库</a></li>
            <li><a href="">添加</a></li>
        </ul>
    </div>

    <div id=title3><img src="../assets/images/link.png" style="margin-right: 16px;">链接管理</div>
    <div id=content3 style="display:none">
        <ul>
            <li><a href="">全部链接</a></li>
            <li><a href="">添加</a></li>
            <li><a href="">分类</a></li>
        </ul>
    </div>

    <div id=title4><img src="../assets/images/talk.png" style="margin-right: 16px;">评论管理</div>
    <div id=content4 style="display:none">
        <ul>
            <li><a href="">所有评论</a></li>
            <li><a href="">设置评论</a></li>
        </ul>
    </div>
</div>