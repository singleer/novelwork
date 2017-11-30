<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <meta charset="UTF-8">
    <title>作品讨论区${nbookCustom.title }千锋中文小说网</title>
    <meta name="keywords" content="作品讨论区,摧神,先飞看刀,起点中文小说网">
    <meta name="description" content="作品讨论区《摧神》-先飞看刀-起点中文小说网">
    <meta name="robots" content="all">
    <meta name="googlebot" content="all">
    <meta name="baiduspider" content="all">
    <meta http-equiv="mobile-agent" content="format=wml; url=http://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=xhtml; url=http://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=html5; url=http://h5.qidian.com/bookstore.html">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
<link data-ignore="true" rel="shortcut icon" type="image/x-icon" href="https://qidian.gtimg.com/qd/favicon/qd_icon.fb0b7.ico">
<link data-ignore="true" rel="Bookmark" type="image/x-icon" href="https://qidian.gtimg.com/qd/favicon/qd_icon.fb0b7.ico">
    
<link rel="stylesheet" data-ignore="true" href="css/commonpinlun.css">

    <link data-ignore="true" rel="stylesheet" href="css/indexpinlun.css">
<link charset="utf-8" rel="stylesheet" href="css/Panelpinlun.css">
    <link charset="utf-8" rel="stylesheet" href="css/LightTippinlun.css">
    <link charset="utf-8" rel="stylesheet" href="css/Dragpinlun.css"><style name="lbf-overlay">.lbf-overlay { position:fixed; top:0; left:0;}</style>
<script type="text/javascript">
          function fatie() {
              window.location.href="${pageContext.request.contextPath }/jumpcomment?${nbookCustom.id }&&${nbookCustom.title }";
          }
</script>
</head>
<body data-dynamic="false">
    <div class="main-header">
        <h1>作品讨论区<a target="_blank" href="https://book.qidian.com/info/1010677034">${nbookCustom.title }</a></h1>
    </div>
    <div class="main-wrap cf">
    <div class="main-body fl">
        <ul class="main-nav dib-wrap cf">
            <li class="fl mr24">
                <a class="nav-tab act">全部 (${nbookCustom.cnum })</a>
            </li>
            <li class="fr">
                <button style="cursor: pointer" onclick="fatie()" class="sendPost blue">我要发帖</button>
            </li>
        </ul>
        <ul class="top-post">
        </ul>
        <ul class="all-post">
            <c:forEach items="${nbookCustom.clist }" var="clist">
                <li class="post-wrap">
                <div class="post">
                    <p class="post-auther">
                        <a target="_blank" href="https://my.qidian.com/user/250812" class="blue mr4 b">${clist.reader }</a><span class="gray">发表了帖子</span>
                    </p>
                    
                    <p class="post-body">
                        ${clist.content }
                    </p>
                    
                    <p class="post-info dib-wrap" data-id="1148488421">
                        <span class="mr20">${clist.created }更新</span>
                            <span>${clist.replyNum }条回复</span>
                    </p>
                </div>
            </li>
            </c:forEach>
        </ul>
    </div>
    <div class="side-wrap fr">
        <div class="forum-info tc mb20" data-l1="1">
            <a target="_blank" href="https://book.qidian.com/info/1010677034">
            <img src="" class="forum-book" alt="${nbookCustom.title }">
            </a>
            <h3>${nbookCustom.title }</h3>
        </div>
    </div>

    </div>
    <div class="footer">
        <div class="box-center cf">
            <div class="copy-right">
                <p><span>Copyright © 2017-2017 </span>版权所有 JavaEE1705小飞象组</p>
                <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！举报电话：110</p>
                <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
                <p>地址：中国（杭州）旺田书画城5楼</p>
            </div>
        </div>
    </div>
</body>
</html>