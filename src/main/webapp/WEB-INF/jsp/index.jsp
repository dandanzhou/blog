<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页-果丹皮的博客</title>
    <%@include file="common/head.jspf" %>
    <c:choose>
        <c:when test="${dev_mode}">
            <link href="${pageContext.request.contextPath}/assets/css/pages/index.css" rel="stylesheet"/>
        </c:when>
        <c:otherwise>
            <link href="${pageContext.request.contextPath}/assets/css/pages/index.min.css" rel="stylesheet"/>
        </c:otherwise>
    </c:choose>
</head>
<body>
</body>
<%@include file="common/topNav.jspf" %>
<div class="main-part">
    <div class="container">
        <%@include file="home/common/head.jsp" %>
        <div class="part2">
            <div class="margin-top-20"></div>
            <div class="pull-left">
                <div id="main">
                    <section class="post">
                        <h1 class="title"><a href="https://blog.alphatr.com/nginx-ssl-config.html" title="SSL 配置研究">SSL 配置研究</a></h1>
                        <a class="post-date" href="https://blog.alphatr.com/nginx-ssl-config.html">
                            <span class="month">Oct</span>
                            <span class="day">26</span>
                        </a>
                        <div class="alpha-post"><p>今年以来看到越来越多的网站启用了 HTTPS，同时在前一段时间看到
                            <a href="https://buy.wosign.com/FreeSSL.html" target="_blank">WoSign</a>
                            有免费的 SSL 证书，所以就趁着这个机会，通过一早上的折腾，将服务器上面的 nginx 重新编译了下，
                            支持 SSL 和 spdy 协议，后来又在机缘巧合下 35 块拿下一个 5 年的泛域证书（通配符证书），这样我就全站基本都启用了 HTTPS，
                            但是利用SSL保护你的网站流量远远不止是在服务器安装一个SSL证书而已，所以在安装了 SSL 证书后需要一系列的配置，
                            让这个 SSL 证书真正发挥作用，下面通过 <a href="https://www.ssllabs.com/ssltest/" target="_blank">SSLLabs</a>
                            的测试介绍下我 SSL 现在的配置。</p><p>下面是我的博客在配置完后 SSLlabs 的
                            <a href="https://www.ssllabs.com/ssltest/analyze.html?d=blog.alphatr.com" target="_blank">测试结果</a>，
                            达到了 A+ 。（分数会有浮动，和所测试的浏览器支持度相关）</p>
                            <img src="//dn-astc.qbox.me/img/a563117578d9f248.png" alt="测试结果" class="block" width="448" height="289">
                        </div>
                        <p class="meta">
                            <ins class="icon icon-comment"></ins>
                            <span class="comment">
                                <a href="https://blog.alphatr.com/nginx-ssl-config.html#comments">4 条评论</a>
                            </span>

                            <ins class="icon icon-view"></ins>
                            <span class="view">3130 浏览</span>
                                <span class="more">
                                    <ins class="icon icon-more"></ins>
                                    <a href="https://blog.alphatr.com/nginx-ssl-config.html" title="SSL 配置研究">阅读全文</a>
                                </span>
                        </p>
                    </section>
                    <section class="post">
                        <h1 class="title">
                            <a href="https://blog.alphatr.com/my-web-dev-environment-1.html" title="我的 Web 开发环境（1）">我的 Web 开发环境（1）</a>
                        </h1>
                        <a class="post-date" href="https://blog.alphatr.com/my-web-dev-environment-1.html">
                        <span class="month">Oct</span>
                        <span class="day">21</span>
                        </a>
                        <div class="alpha-post">
                            <p>从本篇文章开始，我将分几篇文章系统的介绍下我现在使用的 Web 环境，主要是涉及到本地开发环境，线上环境等等，还有代码管理部署等等的一些东西；
                                其实就是个人开发一些小东西如何做代码版本管理和代码备份等；这是第一篇文章，会总的介绍下各个环境的情况；</p>
                        </div>
                        <p class="meta">
                            <ins class="icon icon-comment"></ins>
                            <span class="comment"><a href="https://blog.alphatr.com/my-web-dev-environment-1.html#comments">1 条评论</a></span>

                            <ins class="icon icon-view"></ins>
                            <span class="view">3153 浏览</span>
                            <span class="more">
                                <ins class="icon icon-more"></ins>
                                <a href="https://blog.alphatr.com/my-web-dev-environment-1.html" title="我的 Web 开发环境（1）">阅读全文</a>
                            </span>
                        </p>
                    </section>
                    <section class="post">
                        <h1 class="title">
                            <a href="https://blog.alphatr.com/create-thinkjs-in-bae.html" title="百度开放云平台搭建 ThinkJS 环境">百度开放云平台搭建 ThinkJS 环境</a>
                        </h1>
                        <a class="post-date" href="https://blog.alphatr.com/create-thinkjs-in-bae.html">
                            <span class="month">Oct</span>
                            <span class="day">8</span>
                        </a>
                        <div class="alpha-post"><p>百度开放云平台搭建 ThinkJS 环境</p><h4>关于 ThinkJS</h4><p>ThinkJS 是一款基于 Promise 的 Node.js MVC 框架，详情直接看官网 <a href="http://thinkjs.org/" target="_blank">ThinkJS 官网</a>。至于为什么选择 NodeJS，选择 ThinkJS，最大的原因可能就是前后端语法的一致性，回想起来之前即写 PHP，又写 JavaScript 的日子，脑子都记混了 split 和 explode。</p><h4>为什么选择百度云</h4><p>原因就是百度云是为数不多提供 NodeJS 服务的 PaaS 平台，支持 Git 对代码进行管理，不用安装额外的客户端，至于收费，每月10元的收费不算贵，至少收费 + Git提供了一个比较安心的环境保障；</p><h4>百度云 ThinkJS 环境的局限性</h4><p>和普通的 Linux 主机相比，百度云在 NodeJS 的环境上面有诸多限制。普通环境下，npm 安装 ThinkJS 的包后，ThinkJS 监听端口后启动，然后直接访问对应的主机端口即可，还有就是在前端使用 Nginx 等做反向代理，这些都没有大问题；使用百度云的问题，第一是无法手动安装 ThinkJS 的包，第二是百度云使用的是 lighttpd 做的反向代理，配置文件使用的是 YAML 语法规范。监听的端口这里也做的规定，不能任意指派，使用 18080；</p></div>
                        <p class="meta">
                            <ins class="icon icon-comment"></ins>
                            <span class="comment">
                                <a href="https://blog.alphatr.com/create-thinkjs-in-bae.html#comments">添加评论</a>
                            </span>

                            <ins class="icon icon-view"></ins>
                            <span class="view">3293 浏览</span>
                            <span class="more">
                                <ins class="icon icon-more"></ins>
                                <a href="https://blog.alphatr.com/create-thinkjs-in-bae.html" title="百度开放云平台搭建 ThinkJS 环境">阅读全文</a>
                            </span>
                        </p>
                    </section>
                <div class="clearfix"></div>
            </div>
            <div class="pull-left">
                <%@include file="home/common/sidebar.jsp" %>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="margin-top-30"></div>
    </div>
</div>

<%@include file="common/footer.jspf" %>

</html>
