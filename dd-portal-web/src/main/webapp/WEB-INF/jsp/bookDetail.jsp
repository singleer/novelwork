                     <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>${nbookCustom.title }千锋中文网</title>
<link rel="stylesheet" data-ignore="true" href="css/emoji.css">
<link data-ignore="true" rel="stylesheet" href="css/module.css">
<link data-ignore="true" rel="stylesheet" href="css/layout.css">
<link data-ignore="true" rel="stylesheet" href="css/book_details.css">
 <script type="text/javascript">
    function mulu() {
        var divset = document.getElementsByClassName("book-content-wrap cf");
        var divset1 = document.getElementsByClassName("catalog-content-wrap hidden");
        for (var i = 0; i<divset.length;i++) {
            divset[i].style.display="none";
        };
        for (var i = 0; i<divset1.length;i++) {
            divset1[i].style.display="inline";
        };
    }
    function xinxi() {
        var divset = document.getElementsByClassName("book-content-wrap cf");
        var divset1 = document.getElementsByClassName("catalog-content-wrap hidden");
        for (var i = 0; i<divset.length;i++) {
            divset[i].style.display="inline"; 
        };
        for (var i = 0; i<divset1.length;i++) {
            divset1[i].style.display="none";
        };
    }


 </script>
</head>
<body>
<%--<div class="share-img">
    <img src="img/share.png" width="300" height="300">
</div>--%>

<div class="wrap">
<div id="pin-nav" class="pin-nav-wrap need-search" data-l1="40">
    <div class="box-center cf">
        <div class="nav-list site-nav fl">
            <ul>
                <li><a href="https://www.qidian.com/xuanhuan" target="" data-eid="qd_A47">玄幻</a></li>
                <li><a href="https://www.qidian.com/dushi" target="" data-eid="qd_A48">都市</a></li>
                <li><a href="https://www.qidian.com/xianxia" target="" data-eid="qd_A49">仙侠</a></li>
                <li><a href="https://www.qidian.com/kehuan" target="" data-eid="qd_A50">科幻</a></li>
                <li><a href="https://www.qidian.com/youxi" target="" data-eid="qd_A56">游戏</a></li>
                <li><a href="https://www.qidian.com/lishi" target="" data-eid="qd_A52">历史</a></li>
                <li><a href="https://www.qidian.com/rank" target="_blank" data-eid="qd_A53">排行</a></li>
            </ul>
        </div>
        <div class="nav-list min-user fr">
            <ul>
                <li class="line"></li>
                <li class="sign-out">
                    <a id="pin-login" href="javascript:" data-eid="qd_A64">登录</a>
                    <a class="reg" href="https://passport.qidian.com/reg.html?appid=10&amp;areaid=1&amp;target=iframe&amp;ticket=1&amp;auto=1&amp;autotime=30&amp;returnUrl=https%3A%2F%2Fwww.qidian.com" target="_blank">注册</a>
                </li>
                <li class="sign-in hidden">
                    <a href="https://me.qidian.com/Index.aspx" target="_blank" data-eid="qd_A65"><i id="nav-user-name"></i><span></span></a>
                    <div class="dropdown">
                        <a href="https://me.qidian.com/msg/lists.aspx?page=1" target="_blank" data-eid="qd_A66">消息(<i id="top-msg">0</i>)</a>
                        <a href="https://www.qidian.com/charge/meRedirect" target="_blank" data-eid="qd_A67">充值</a>
                        <a href="https://me.qidian.com/Index.aspx" target="_blank" data-eid="qd_A68">个人中心</a>
                        <a href="https://www.qidian.com/help/kf" target="_blank" data-eid="qd_A69">客服中心</a>
                        <a id="exit" href="javascript:" data-eid="qd_A70">退出</a>
                    </div>
                </li>
                <li class="line"></li>
                <li class="book-shelf" id="top-book-shelf">
                    <a href="https://me.qidian.com/bookCase/bookCase.aspx" target="_blank" data-eid="qd_A63"><i>我的书架
                    </i></a></li>
            </ul>
        </div>
    </div>
</div>
<div class="border-shadow ">
    <span></span>
    <span></span>
</div>

    <div class="book-detail-wrap center990">
        <div class="book-information cf" data-l1="2">

    
    <div class="book-img">
        <a class="J-getJumpUrl" id="bookImg" href="https://read.qidian.com/chapter/5ZeHRieKi97oTMoHyHZuUA2/Lz4oPAKh7PXwrjbX3WA1AA2" data-eid="qd_G09" data-bid="1010677034" data-firstchapterjumpurl="//read.qidian.com/chapter/5ZeHRieKi97oTMoHyHZuUA2/Lz4oPAKh7PXwrjbX3WA1AA2"></a>
    </div>
    
    <div class="book-info ">
        <h1>
            <em>${nbookCustom.title }</em>
            <span><a class="writer" href="https://me.qidian.com/authorIndex.aspx?id=2058757" target="_blank" data-eid="qd_G08">${nbookCustom.author }</a> 著</span>
        </h1>
        <p class="tag">
            <span class="blue">
                <c:if test="${nbookCustom.status==1 }">
                    连载
                </c:if>
                 <c:if test="${nbookCustom.status==2 }">
                     完本
                 </c:if>
            </span>
            <span class="blue">
                 <c:if test="${nbookCustom.attribute==1 }">
                    免费
                 </c:if>
                <c:if test="${nbookCustom.attribute==2 }">
                    vip
                </c:if>
            </span>
            <span class="blue">${nbookCustom.catName } </span>
        </p>
                <p class="intro">${nbookCustom.readpoint }</p>
                <p><em>${nbookCustom.count }</em><cite>字</cite><i>|</i><em>${nbookCustom.click }</em><cite>总点击</cite></p>

                <p><a class="red-btn J-getJumpUrl " href="https://read.qidian.com/chapter/5ZeHRieKi97oTMoHyHZuUA2/Lz4oPAKh7PXwrjbX3WA1AA2" id="readBtn" data-eid="qd_G03" data-bid="1010677034" data-firstchapterjumpurl="//read.qidian.com/chapter/5ZeHRieKi97oTMoHyHZuUA2/Lz4oPAKh7PXwrjbX3WA1AA2">免费试读</a><a class="blue-btn add-book" id="addBookBtn" href="javascript:" data-eid="qd_G05" data-bookid="1010677034" data-bid="1010677034">加入书架</a>
                    <a class="blue-btn" id="topRewardBtn" href="javascript:" data-showtype="2" data-eid="qd_G07">投推荐票
                    </a>
                </p>
            </div>
            <div class="comment-wrap">
        <div id="commentWrap">
            <div class="j_getData hidden" style="display: block;">
                <h4 id="j_bookScore"><span><cite id="score1">${(nbookCustom.score)/10 }</cite></span></h4>
            </div>
        </div>
        </div>
    <div class="take-wrap">
    
    </div>
    

</div>
  
        <div class="content-nav-wrap cf" data-l1="3">
            <div class="nav-wrap fl">
                <ul>
                    <li class="act"><a class="lang" id="j-bookInfoPage" href="javascript:" data-eid="qd_G15" onclick="xinxi()" style="cursor: pointer">作品信息</a></li>
                    <li class="j_catalog_block"><a class="lang" onclick="mulu()" style="cursor: pointer" id="j_catalogPage" data-eid="qd_G16">目录<i><span id="J-catalogCount">${nbookCustom.mnum }</span></i></a></li>
                    <li class="j_discussion_block"><a href="${pageContext.request.contextPath}/jump?id=${nbookCustom.id }" class="lang" target="_blank" data-eid="qd_G17">作品讨论<i><span id="J-discusCount">${nbookCustom.cnum }</span></i></a></li>
                </ul>
            </div>
        </div>
        <div class="catalog-content-wrap hidden" id="j-catalogWrap" data-l1="14">
            <div class="go-top">
                <div class="go-top-wrap">
                    <a href="#" class="icon-go-top"><em class="iconfont" data-eid="qd_G72"></em></a>
                </div>
            </div>
            <div class="volume-wrap">
                <div class="volume">
                    <div class="cover"></div>
                    <h3>
                        <a class="subscri" href="https://read.qidian.com/hankread/1010677034/68227376" target="_blank"><em class="btn"><b class="iconfont"></b>分卷阅读</em></a>
                        正文卷<i>·</i>共${nbookCustom.mnum }章<span class="free">
                        <c:if test="${nbookCustom.attribute==1 }">
                        免费
                        </c:if>
                        <c:if test="${nbookCustom.attribute==2 }">
                         vip
                        </c:if></span><em class="count">本卷共<cite>${nbookCustom.count }</cite>字</em></h3>
                    <ul class="cf">
                        <c:forEach items="${nbookCustom.mlist }" var="list">
                        <li data-rid="1"><a href="${pageContext.request.contextPath}/book-content" target="_blank" data-eid="qd_G55" data-cid="//read.qidian.com/chapter/5ZeHRieKi97oTMoHyHZuUA2/Lz4oPAKh7PXwrjbX3WA1AA2" >${list.title }</a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        
        <div class="book-content-wrap cf" >
            <div class="left-wrap fl">
                <div class="book-info-detail">
                    <cite class="icon-pin"></cite>
                    <div class="book-intro">
                        <p>
                            ${nbookCustom.desctitle }
                        </p>
                    </div>
                </div>
                <div class="fans-zone" data-l1="5">
                    <h3 class="lang">粉丝互动</h3>
                    <div class="fans-interact cf">
                                <div class="action-wrap" id="ticket-wrap">
                                    <div class="ticket rec-ticket">
                                        <p>总推荐票数</p>
                                        <p class="num"><i id="recCount">${nbookCustom.tickets }</i></p>
                                        <div class="icon-box rec">
                                            <span></span>
                                            <b></b>
                                        </div>
                                        <a class="red-radius-btn" id="recBtn" href="javascript:" data-showtype="2" data-eid="qd_G23">投推荐票</a>
                                    </div>
                                </div>                  
                                        </div>
                                    </div>
                                    <div class="user-commentWrap" data-l1="5">
                 <div class="user-comment-wrap book-friend">
                        <div class="comment-head cf">
                            <h3 class="lang">
                                <a href="${pageContext.request.contextPath}/jump?id=${nbookCustom.id }"><span style="cursor: pointer">作品讨论区</span></a> <a href="">我要发帖 </a></h3>
                        </div>
<div class="user-discuss" id="userDiscuss" data-l1="8">
<div class="book-discuss-wrap">
    <div class="discuss-list">
        
        <!-- start 有数据状态 -->
        <ul>
            <c:forEach items="${nbookCustom.clist }" var="clist">
            <li class="cf" data-rid="3">
               <div class="discuss-info">
                   <p class="users">
                       <a class="blue" href="https://my.qidian.com/user/219426571" target="_blank"><b>${clist.reader }</b></a><span class="gray">发表了帖子</span>
                   </p>
                   <h5 class="text">
                        
                        <a class="" href="https://forum.qidian.com/post/8721302503681003/1150415016" target="_blank" data-eid="qd_G37">
                            ${clist.content }
                        </a>
                   </h5>
                   <p class="info dib-wrap" data-id="1150415016">
                      <span class="mr20"> ${clist.created }</span>
                      <a href="https://forum.qidian.com/post/8721302503681003/1150415016" class="info-tab mr20" target="_blank">
                        <i class="iconfont"></i>
                        <span>${clist.replyNum }条回复</span>
                      </a>

                    </p>
               </div>
            </li>
            </c:forEach>
            <!-- 普通帖 end -->
        </ul>
    </div>
</div>
</div>
                    </div>
                </div>
            </div>
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
</html>