<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>后台管理</title>
    <%@include file="common/head.jspf" %>
    <c:choose>
        <c:when test="${dev_mode}">
            <link href="${pageContext.request.contextPath}/assets/css/pages/user-index.css" rel="stylesheet"/>
            <link href="${pageContext.request.contextPath}/assets/css/pages/user.css" rel="stylesheet"/>
        </c:when>
        <c:otherwise>
            <link href="${pageContext.request.contextPath}/assets/css/pages/user-index.min.css" rel="stylesheet"/>
            <link href="${pageContext.request.contextPath}/assets/css/pages/user.min.css" rel="stylesheet"/>
        </c:otherwise>
    </c:choose>
</head>
<body>
<%@include file="common/topNav.jspf" %>
<div class="main">
    <div class="main-part">
        <%@include file="manager/common/head.jsp" %>
        <div class="manager">
            <div class="pull-left wrap">
                <h2><img src="../assets/images/write.png" style="margin-right: 10px;">文章<a href="write.jsp" class="add-new-h2">写文章</a> </h2>
                <ul class="sub">
                    <li class="all">
                        <a href="" class="current">全部<span class="count">（）</span>|</a>
                    </li>
                    <li class="publish">
                        <a href="">已发布<span class="count">（）</span></a>
                    </li>
                </ul>
                <div class="margin-top-20"></div>
                <form id="post-filter" action method="">
                    <div class="tablenav top">
                        <div class="pull-left alignleft actions">
                            <select name="action1">
                                <option value="-1" selected="selected">批量操作</option>
                                <option value="edit" class="hide-if-no-js">编辑</option>
                                <option value="trash">移至回收站</option>
                            </select>
                            <input type="submit" id="doaction" class="button-secondary action" value="应用">
                        </div>
                        <div class="pull-left alignleft actions">
                            <select name="action2">
                                <option selected="selected" value="0">显示所有日期</option>
                                <option value="201505">2015 年五月</option>
                                <option value="201502">2015 年二月</option>
                            </select>
                            <select name="action3">
                                <option value="0">查看所有分类目录</option>
                                <option class="level-0" value="1">未分类</option>
                            </select>
                            <input type="submit" id="post-query-submit" class="button-secondary" value="筛选">
                        </div>
                        <div class="pull-left search-box">
                            <label class="screen-reader-text" for="post-search-input">搜索文章:</label>
                            <input type="search" id="post-search-input" name="s" value="">
                            <input type="submit" name="" id="search-submit" class="button" value="搜索文章"></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="margin-top-20"></div>
                    <table class="wp-list-table widefat fixed posts" cellspacing="0">
                        <thead>
                        <tr>
                            <th scope="col" id="cb" class="manage-column column-cb check-column" style="">
                                <input type="checkbox">
                            </th>
                            <th scope="col" id="title" class="manage-column column-title sortable desc" style="">
                                <a href="http://daisydan.sinaapp.com/wp-admin/edit.php?ids=4&amp;orderby=title&amp;order=asc">
                                    <span>标题</span>
                                    <span class="sorting-indicator"></span>
                                </a>
                            </th>
                            <th scope="col" id="author" class="manage-column column-author sortable desc" style="">
                                <a href="http://daisydan.sinaapp.com/wp-admin/edit.php?ids=4&amp;orderby=author&amp;order=asc">
                                    <span>作者</span>
                                    <span class="sorting-indicator"></span>
                                </a>
                            </th>
                            <th scope="col" id="categories" class="manage-column column-categories" style="">分类目录</th>
                            <th scope="col" id="tags" class="manage-column column-tags" style="">标签</th>
                            <th scope="col" id="comments" class="manage-column column-comments num sortable desc" style="">
                                <a href="http://daisydan.sinaapp.com/wp-admin/edit.php?ids=4&amp;orderby=comment_count&amp;order=asc">
                                    <span>
                                        <span class="vers"><img alt="评论" src="http://daisydan.sinaapp.com/wp-admin/images/comment-grey-bubble.png"></span>
                                    </span>
                                    <span class="sorting-indicator"></span>
                                </a>
                            </th>
                            <th scope="col" id="date" class="manage-column column-date sorted desc" style="">
                                <a href="http://daisydan.sinaapp.com/wp-admin/edit.php?ids=4&amp;orderby=date&amp;order=asc">
                                    <span>日期</span>
                                    <span class="sorting-indicator"></span>
                                </a>
                            </th>
                        </tr>
                        </thead>
                        <tbody id="the-list">
                        <tr id="post-1" class="post-1 post type-post status-publish format-standard hentry category-uncategorized alternate iedit author-self" valign="top">
                            <th scope="row" class="check-column"><input type="checkbox" name="post[]" value="1"></th>
                            <td class="post-title page-title column-title">
                                <strong>
                                    <a class="row-title" href="http://daisydan.sinaapp.com/wp-admin/post.php?post=1&amp;action=edit" title="编辑“欢迎使用 WordPress for SAE”">欢迎使用 WordPress for SAE</a>
                                </strong>
                                <div class="row-actions">
                                    <span class="edit"><a href="http://daisydan.sinaapp.com/wp-admin/post.php?post=1&amp;action=edit" title="编辑此项目">编辑</a> | </span>
                                    <span class="trash"><a class="submitdelete" title="移动此项目到回收站" href="http://daisydan.sinaapp.com/wp-admin/post.php?post=1&amp;action=trash&amp;_wpnonce=d6c57f9b8d">移至回收站</a> | </span>
                                    <span class="view"><a href="http://daisydan.sinaapp.com/?p=1" title="查看“欢迎使用 WordPress for SAE”" rel="permalink">查看</a></span>
                                </div>
                                <div class="hidden" id="inline_1">
                                    <div class="post_title">欢迎使用 WordPress for SAE</div>
                                    <div class="post_name">hello-world</div>
                                    <div class="post_author">1</div>
                                    <div class="comment_status">open</div>
                                    <div class="ping_status">open</div>
                                    <div class="_status">publish</div>
                                    <div class="jj">28</div>
                                    <div class="mm">02</div>
                                    <div class="aa">2015</div>
                                    <div class="hh">01</div>
                                    <div class="mn">47</div>
                                    <div class="ss">34</div>
                                    <div class="post_password"></div>
                                    <div class="post_category" id="category_1">1</div>
                                    <div class="tags_input" id="post_tag_1"></div>
                                    <div class="sticky"></div>
                                    <div class="post_format"></div>
                                </div>
                            </td>
                            <td class="author column-author"><a href="edit.php?post_type=post&amp;author=1">doubledan</a></td>
                            <td class="categories column-categories">
                                <a href="edit.php?post_type=post&amp;category_name=uncategorized">未分类</a>
                            </td>
                            <td class="tags column-tags">无标签</td>
                            <td class="comments column-comments">
                                <div class="post-com-count-wrapper">
                                    <a href="http://daisydan.sinaapp.com/wp-admin/edit-comments.php?p=1" title="0 待审中" class="post-com-count">
                                        <span class="comment-count">1</span>
                                    </a>
                                </div>
                            </td>
                            <td class="date column-date">
                                <abbr title="2015 年 2 月 28 日上午 1:47:34">2015-02-28</abbr><br>已发布
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="margin-top-30"></div>
</div>
<%@include file="common/footer.jspf" %>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-2.1.1.min.js"></script>
<script>
    $(".column-title").mouseout(function(){
        $(".row-actions").hide();
    });
    $(".column-title").mouseover(function(){
        $(".row-actions").show();
    });
</script>
</html>
