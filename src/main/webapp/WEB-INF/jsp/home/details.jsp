<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>博文-果丹皮的博客</title>
  <%@include file="../common/head.jspf" %>
  <c:choose>
    <c:when test="${dev_mode}">
      <link href="${pageContext.request.contextPath}/assets/css/pages/details.css" rel="stylesheet"/>
      <link href="${pageContext.request.contextPath}/assets/css/pages/date.css" rel="stylesheet"/>
    </c:when>
    <c:otherwise>
      <link href="${pageContext.request.contextPath}/assets/css/pages/details.min.css" rel="stylesheet"/>
      <link href="${pageContext.request.contextPath}/assets/css/pages/date.min.css" rel="stylesheet"/>
    </c:otherwise>
  </c:choose>
</head>
<body>
<%@include file="../common/topNav.jspf" %>
<div class="main-part">
  <div class="container">
    <%@include file="common/head.jsp" %>
    <div class="part2">
      <div class="margin-top-20"></div>
      <div class="pull-left">
        <div class="margin-top-20"></div>
        <div id="main">
          <article class="post">
            <h1 class="article-title">我的 Web 开发环境（1）</h1>
            <a class="post-date" href="https://blog.alphatr.com/my-web-dev-environment-1.html" title="2014-10-21">
              <span class="month">Oct</span>
              <span class="day">21</span>
            </a>
            <div class="entry alpha-post">
              <p>从本篇文章开始，我将分几篇文章系统的介绍下我现在使用的 Web 环境，主要是涉及到本地开发环境，线上环境等等，还有代码管理部署等等的一些东西；
                其实就是个人开发一些小东西如何做代码版本管理和代码备份等；这是第一篇文章，会总的介绍下各个环境的情况；
              </p>
              <!--more-->
              <h3>Web 环境简介</h3>
              <p>我这里现在本地是通过 vagrant 搭建的 CentOS 7 开发环境，线上有两个 VPS，分别是搭载 CentOS 6.5 的 Linode 和 搭载 CentOS 7 的 DigitalOcean，在 3 个环境中均部署了 Nginx，PHP，MySQL，NodeJS，Git 环境，三台 Linux 中互相建立信任关系；
                使用 Git 来做版本管理，和代码部署，在其中一台 VPS 上面做了 Git 仓库，然后通过 Dropbox 对仓库进行备份。
              </p>

              <h3>本地开发环境 - Vagrant 使用</h3>
              <p>首先我本地的是通过 vagrant 来搭建的 Linux 虚拟机来做开发机，vagrant 可以方便的做共享目录，端口转发等功能，所以将宿主机的代码目录共享到虚拟机，
                供虚拟机里面的 Nginx，PHP 等程序来访问，而且宿主机，就是我的电脑，可以方便的通过 Sublime 等编辑器来编辑，图片处理等等。
              </p>
              <p>虚拟机环境搭建还是正常的编译安装或者 yum 安装等等；注意一点就是 Nginx 或者 Apache 需要关闭 SendFile 功能。如下：</p>

              <pre class="lang"><code># Apache 配置添加:
              EnableSendfile off

              # Nginx 配置添加:
              sendfile off;</code></pre>

              <p>将共享目录设置成 Nginx 或者 Apache 的 Web 目录，这样子虚拟机的运行环境就能访问本机的代码了，在
                <br>环境布好后通过 Vagrant 的生成备份功能，备份虚拟机开发环境；然后启动开发环境即可；
              </p>
              <p>再来说宿主机访问虚拟机的环境；vagrant 可以通过桥接和 NAT 的方式来设置；</p>
              <p>桥接就是讲虚拟机绑定到和宿主机同一个路由器上面，虚拟机的 IP 设置为和路由同一个网段，这样在宿主机和虚拟机就处在同一个局域网下，
                可以直接访问局域网的 IP 来实现访问虚拟机，同时，虚拟机也可以连接外网，问题就是需要你的虚拟机可以连接局域网的路由，如果宿主机根本就没有连接任何网络，
                或者上层路由需要其他额外的认证（比如公司的一些路由等）这种方式就有问题了；</p>
              <p>NAT 的方式是虚拟机的网络通过宿主机进行转换，虚拟可以访问外网，宿主机访问虚拟机的特定端口的话就需要用到端口转发的功能了，简单来说，
                我要访问虚拟机的 80 端口，如果我的宿主机没有任何 Web 服务器，我这里就可以设置虚拟机的 80 端口转发到宿主机的 80 端口，通过 127.0.0.1:80
                这种方式就可以访问，宿主机就会将请求转发到虚拟机的 80 端口上面；下面就是 vagrant 里面设置端口转发；</p>
              <pre class="lang">
                <code>config.vm.network "forwarded_port", guest: 80, host: 80</code>
              </pre>
              <p>这样的设置对于 Windows 是没有问题的，但是对于 Mac 下面，端口转发是不允许在 1024 端口以下的，但是又不想在宿主机里面访问还带个后面的端口号，
                那这样子可以使用迂回的方式，vagrant 端口转发到 1024 后，然后使用 Mac 自身的端口转发又从 1024 后转发回 80 端口，大致的设置在 Mac 下如下：
              </p>
              <pre class="lang">
                <code>sudo ipfw add fwd 127.0.0.1,1081 tcp from any to 127.0.0.1 80 in</code>
              </pre>
              <p>在最新的 OS X 10.10 上面，ipfw 已经移除，所以要使用 pf 配置文件来设置端口转发，首先添加配置文件</p>
              <pre class="lang"><code>sudo vi /etc/pf.anchors/com.vagrant</code></pre>
              <p>在里面添加配置:</p>
              <pre class="lang"><code>rdr pass on lo0 inet proto tcp from any to any port 80 -&gt; 127.0.0.1 port 1081</code></pre>
              <p>然后编辑/etc/pf.conf，在里面添加如下配置，这里可能要注意顺序，</p>
              <pre class="lang"><code>rdr-anchor "vagrant"
              load anchor "vagrant" from "/etc/pf.anchors/com.vagrant"</code></pre>
              <p>最后重新加载 pf 规则，启动 pf</p>
              <pre class="lang"><code>sudo pfctl -f /etc/pf.conf
              sudo pfctl -e</code></pre>
              <h3>参考文档</h3>
              <p>关于在虚拟机里面安装 LNMP 或者 LAMP 环境，可以参考我之前的文章；</p>

              <ul>
                <li><a href="http://segmentfault.com/blog/fenbox/1190000000264347" target="_blank">使用 Vagrant 打造跨平台开发环境</a></li>
                <li><a href="http://www.cnblogs.com/ggjucheng/archive/2012/08/19/2646007.html" target="_blank">实例讲解虚拟机3种网络模式(桥接、nat、Host-only)</a></li>
              </ul>
            </div>

            <div class="meta-bottom meta">
              <p>本文固定链接: <a href="https://blog.alphatr.com/my-web-dev-environment-1.html" title="我的 Web 开发环境（1）">我的 Web 开发环境（1）</a></p>
              <p>转载请注明: <a href="https://blog.alphatr.com/my-web-dev-environment-1.html" title="我的 Web 开发环境（1）">我的 Web 开发环境（1）</a> | <a href="https://blog.alphatr.com/">AlphaTr 的博客</a></p>
              <hr class="hr">
              <p>上一篇文章：<a href="https://blog.alphatr.com/create-thinkjs-in-bae.html" title="百度开放云平台搭建 ThinkJS 环境">百度开放云平台搭建 ThinkJS 环境</a></p><p>下一篇文章：<a href="https://blog.alphatr.com/nginx-ssl-config.html" title="SSL 配置研究">SSL 配置研究</a></p>            </div>
          </article>
          <div id="comments">
            <h4>仅 1 条评论</h4>
            <ol class="comment-list"><li class="comment by-user parent">
              <div class="comment-body clearfix">
                <a class="comment-author" title="少壮" href="http://shaozhuang.me" target="_blank" rel="external nofollow">
                  <img class="avatar" src="//dn-astc.qbox.me/avatar/b0d4c88baf0ebdf9b724fcd6694082de.60" alt="少壮" width="60" height="60">                <span class="author">少壮</span>
                </a>
                <div class="comment-main">
                  <div class="comment-box">
                    <div class="comment-content">学习一下～</div>
                    <p class="comment-meta">
                      <span><a href="#reply-2396">回复</a></span>
                      <span>2014-10-26 14:09</span>
                      <span></span>
                    </p>
                  </div>
                </div>
              </div>
              <ul class="children"></ul>
            </li>
            </ol>
            <div class="margin-top-30"></div>
            <div id="comment-form">
              <h3 class="response">发表评论 <small><a id="cancel-comment-reply-link" href="https://blog.alphatr.com/my-web-dev-environment-1.html" rel="nofollow" style="display:none">取消回复</a></small></h3>
              <form method="post" action="https://blog.alphatr.com/my-web-dev-environment-1.html/comment" novalidate="">
                <div class="form-cell text">
                  <textarea name="text" type="chinese" required=""></textarea>
                </div>
                <div class="form-cell submit">
                  <span class="form-tips"></span>
                  <button type="submit" name="submit" disabled="">发表评论</button>
                </div>
              </form>
              <textarea id="comment-tpl" style="display: none;">
                &lt;li class="{$cls}"&gt;
                &lt;div class="comment-body clearfix"&gt;
                    &lt;a class="comment-author" title="{$author}" href="{$url}" target="_blank" rel="external nofollow"&gt;
                        &lt;img class="avatar" src="{$avatar}" alt="{$author}" width="60" height="60"&gt;
                        &lt;span class="author"&gt;{$author}&lt;/span&gt;
                    &lt;/a&gt;
                    &lt;div class="comment-main"&gt;
                        &lt;div class="comment-box"&gt;
                            &lt;div class="comment-content"&gt;{$text}&lt;/div&gt;
                            &lt;p class="comment-meta"&gt;
                                &lt;span&gt;{$reply}&lt;/span&gt;
                                &lt;span&gt;{$created}&lt;/span&gt;
                                &lt;span&gt;{$status}&lt;/span&gt;
                            &lt;/p&gt;
                        &lt;/div&gt;
                    &lt;/div&gt;
                &lt;/div&gt;
            &lt;/li&gt;
        </textarea>
            </div></div>
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

</body>
</html>
