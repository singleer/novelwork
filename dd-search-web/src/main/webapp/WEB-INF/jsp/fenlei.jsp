<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/28
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html class="loaded">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>奇幻频道_起点中文网</title>
    <meta name="keywords" content="奇幻,奇幻阅读,奇幻下载">
    <meta name="description"
          content="读奇幻小说尽在小说网:起点中文小说网。本站提供奇幻小说排行榜,奇幻小说阅读、下载。以及奇幻小说最新更新章节和奇幻小说章节列表尽在小说门户-起点小说网,www.qidian.com">
    <meta name="robots" content="all">
    <meta name="googlebot" content="all">
    <meta name="baiduspider" content="all">
    <meta name="updatetime" content="2017-11-28,19:32:13">
    <meta http-equiv="mobile-agent" content="format=wml; url=https://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=xhtml; url=https://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=html5; url=https://m.qidian.com">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <script src="js/stats.js" name="MTAH5" sid="500451537"></script>
    <script>document.domain = 'qidian.com';</script>
    <script>var speedTimer = [],
        speedZero = new Date().getTime();</script>
    <script>//遇到cookie tf=1的话留在本站，否则跳转移动站
    if (getCookie('tf') != 1) {
        //判断是以下设备后跳转到m站
        if (navigator.userAgent.match(/(iPhone|iPod|Android)/i)) {
            location.href = "//m.qidian.com"
        }
    } else {
        // M站设置了一年，这里fixed
        setCookie('tf', 1, 'qidian.com', '/', 0);
    }
    // start 防劫持
    //设置cookie
    function setCookie(name, value, domain, path, expires) {
        if (expires) {
            expires = new Date(+new Date() + expires);
        }
        var tempcookie = name + '=' + escape(value) +
            ((expires) ? '; expires=' + expires.toGMTString() : '') +
            ((path) ? '; path=' + path : '') +
            ((domain) ? '; domain=' + domain : '');
        //Ensure the cookie's size is under the limitation
        if (tempcookie.length < 4096) {
            document.cookie = tempcookie;
        }
    }

    //获取cookie
    function getCookie(name) {
        var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
        if (arr = document.cookie.match(reg))
            return (arr[2]);
        else
            return null;
    }

    //创建并发送请求
    function createSender(url) {
        var img = new Image();
        img.onload = img.onerror = function () {
            img = null;
        };
        img.src = url;
    };</script>
    <link data-ignore="true" rel="shortcut icon" type="image/x-icon"
          href="https://qidian.gtimg.com/qd/favicon/qd_icon.fb0b7.ico">
    <link data-ignore="true" rel="Bookmark" type="image/x-icon"
          href="https://qidian.gtimg.com/qd/favicon/qd_icon.fb0b7.ico">
    <link rel="stylesheet" data-ignore="true" href="css/Autocomplete_002.css">
    <link charset="utf-8" rel="stylesheet" href="css/Autocomplete.css">
</head>
<body data-dynamic="false">
<div class="share-img"><img
        src="img/share.png"
        width="300" height="300"></div>
<div class="wrap">
    <div id="pin-nav" class="pin-nav-wrap need-search" data-l1="40">
        <div class="box-center cf">
            <div class="nav-list site-nav fl">
                <ul>
                    <li class="site"><a class="pin-logo" href="https://www.qidian.com/" data-eid="qd_A43"><span></span></a>
                        <div class="dropdown"><a href="https://www.qdmm.com/" target="" data-eid="qd_A44">起点女生网</a><a
                                href="http://chuangshi.qq.com/" target="" data-eid="qd_A45">创世中文网</a><a
                                href="http://yunqi.qq.com/" target="" data-eid="qd_A46">云起书院</a></div>
                    </li>
                    <li><a href="https://www.qidian.com/xuanhuan" target="" data-eid="qd_A47">玄幻</a></li>
                    <li class=""><a href="https://www.qidian.com/dushi" target="" data-eid="qd_A48">都市</a></li>
                    <li><a href="https://www.qidian.com/xianxia" target="" data-eid="qd_A49">仙侠</a></li>
                    <li class=""><a href="https://www.qidian.com/kehuan" target="" data-eid="qd_A50">科幻</a></li>
                    <li class=""><a href="https://www.qidian.com/youxi" target="" data-eid="qd_A56">游戏</a></li>
                    <li class=""><a href="https://www.qidian.com/lishi" target="" data-eid="qd_A52">历史</a></li>
                    <li class=""><a href="https://www.qidian.com/rank" target="_blank" data-eid="qd_A53">排行</a></li>
                    <li class="more"><a href="javascript:" id="top-nav-more" target="" data-eid="qd_A54">更多<span></span></a>
                        <div class="dropdown"><a href="https://www.qidian.com/all" target="_blank" data-eid="qd_A169">全部作品</a><a
                                href="https://www.qidian.com/2cy" target="" data-eid="qd_A55">二次元</a><a
                                href="https://www.qidian.com/qihuan" target="" data-eid="qd_A51">奇幻</a><a
                                href="https://www.qidian.com/wuxia" target="" data-eid="qd_A57">武侠</a><a
                                href="https://www.qidian.com/lingyi" target="" data-eid="qd_A58">灵异</a><a
                                href="https://www.qidian.com/junshi" target="" data-eid="qd_A59">军事</a><a
                                href="https://www.qidian.com/xianshi" target="" data-eid="qd_A60">现实</a><a
                                href="https://www.qidian.com/tiyu" target="" data-eid="qd_A61">体育</a><a
                                href="https://www.qidian.com/duanpian" target="" data-eid="qd_A196">短篇</a></div>
                    </li>
                </ul>
            </div>
            <div class="nav-list min-user fr">
                <ul>
                    <li id="min-search">
                        <form id="formUrl" action="//www.qidian.com/search" method="get" target="_blank"><label
                                id="pin-search" for="topSearchSubmit" data-eid="qd_A62"><em
                                class="iconfont"></em></label><input id="pin-input" class="pin-input hide" name="kw"
                                                                      placeholder="异世界的美食家" type="text"> <input
                                class="submit-input" id="topSearchSubmit" data-eid="qd_A62" type="submit"></form>
                    </li>
                    <li class="line"></li>
                    <li class="sign-out"><a id="pin-login" href="javascript:" data-eid="qd_A64">登录</a><a class="reg"
                                                                                                         href="https://passport.qidian.com/reg.html?appid=10&amp;areaid=1&amp;target=iframe&amp;ticket=1&amp;auto=1&amp;autotime=30&amp;returnUrl=https%3A%2F%2Fwww.qidian.com"
                                                                                                         target="_blank">注册</a>
                    </li>
                    <li class="sign-in hidden"><a href="https://me.qidian.com/Index.aspx" target="_blank"
                                                  data-eid="qd_A65"><i id="nav-user-name"></i><span></span></a>
                        <div class="dropdown"><a href="https://me.qidian.com/msg/lists.aspx?page=1" target="_blank"
                                                 data-eid="qd_A66">消息(<i id="top-msg">0</i>)</a><a
                                href="https://www.qidian.com/charge/meRedirect" target="_blank" data-eid="qd_A67">充值</a><a
                                href="https://me.qidian.com/Index.aspx" target="_blank" data-eid="qd_A68">个人中心</a><a
                                href="https://www.qidian.com/help/kf" target="_blank" data-eid="qd_A69">客服中心</a><a
                                id="exit" href="javascript:" data-eid="qd_A70">退出</a></div>
                    </li>
                    <li class="line"></li>
                    <li class="book-shelf" id="top-book-shelf"><a href="https://me.qidian.com/bookCase/bookCase.aspx"
                                                                  target="_blank" data-eid="qd_A63"><em
                            class="iconfont"></em><i>我的书架</i></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="channel-header qihuan" data-l1="2"
         style="background-image: url('//qidian.qpic.cn/qidian_common/349573/8a7f2c5f5aed27d6c922ceb277158f7f/0')">
        <div class="box-center cf">
            <div class="logo-mask"></div>
            <div class="logo-wrap"><a class="qihuan" href="https://www.qidian.com/qihuan" data-eid="qd_F1"></a></div>
            <div class="search-wrap">
                <form id="formUrl" action="//www.qidian.com/search" method="get" target="_blank"><input
                        class="search-input" id="s-box" placeholder="异世界的美食家" name="kw" autocomplete="off" type="text">
                    <input id="searchSubmit" class="submit-input" data-eid="qd_F3" type="submit"><label
                            class="search-btn" for="searchSubmit" id="search-btn" href="javascript:"
                            data-eid="qd_F3"><em class="iconfont"></em></label></form>
            </div>
        </div>
    </div>
    <div class="box-center">
        <div class="sub-type-wrap" data-l1="3">
            <div class="box-center cf">
                <c:forEach items="${catNames}" var="name">
                    <a href="https://www.qidian.com/all?chanId=1&amp;subCateId=201" data-eid="qd_F4">${name}</a>
                </c:forEach>
                <%--<a href="https://www.qidian.com/all?chanId=1&amp;subCateId=201" data-eid="qd_F4">史诗奇幻</a><a
                    href="https://www.qidian.com/all?chanId=1&amp;subCateId=62" data-eid="qd_F5">剑与魔法</a><a
                    href="https://www.qidian.com/all?chanId=1&amp;subCateId=202" data-eid="qd_F6">黑暗幻想</a><a
                    href="https://www.qidian.com/all?chanId=1&amp;subCateId=38" data-eid="qd_F7">现代魔法</a><a
                    href="https://www.qidian.com/all?chanId=1&amp;subCateId=20092" data-eid="qd_F8">历史神话</a><a
                    href="https://www.qidian.com/all?chanId=1&amp;subCateId=20093" data-eid="qd_F9">另类幻想</a>--%><em>|</em><a
                    href="https://www.qidian.com/rank?chn=1" data-eid="qd_F120">${bookList.get(0).catParentName}排行</a><a
                    href="https://www.qidian.com/finish?chanId=1" data-eid="qd_F121">${bookList.get(0).catParentName}完本</a><a
                    href="https://www.qidian.com/free/all?chanId=1" data-eid="qd_F122">${bookList.get(0).catParentName}免费</a></div>
        </div>
        <div class="focus-wrap mb40 cf">
            <div class="week-rec-wrap fl" data-l1="4"><h3 class="lang">本周强推</h3>
                <div class="rec-list">
                    <ul>
                        <li data-rid="1"><em><a class="name" href="https://book.qidian.com/info/1010864272"
                                                data-eid="qd_F11" data-bid="1010864272" target="_blank" title="蛊惑魔王">蛊惑魔王</a></em><a
                                class="author" href="https://me.qidian.com/authorIndex.aspx?id=4370119"
                                data-eid="qd_F12" target="_blank">一行白鹭上青天</a></li>
                        <li data-rid="2"><em><a class="name" href="https://book.qidian.com/info/1010766558"
                                                data-eid="qd_F11" data-bid="1010766558" target="_blank" title="漫威魔兽大穿越">漫威魔兽大穿越</a></em><a
                                class="author" href="https://me.qidian.com/authorIndex.aspx?id=7448556"
                                data-eid="qd_F12" target="_blank">魏武丘</a></li>
                        <li data-rid="3"><em><a class="name" href="https://book.qidian.com/info/1010763267"
                                                data-eid="qd_F11" data-bid="1010763267" target="_blank" title="异种骑士团">异种骑士团</a></em><a
                                class="author" href="https://me.qidian.com/authorIndex.aspx?id=400439507"
                                data-eid="qd_F12" target="_blank">夜尽长</a></li>
                        <li data-rid="4"><em><a class="name" href="https://book.qidian.com/info/1010781002"
                                                data-eid="qd_F11" data-bid="1010781002" target="_blank" title="蛮族之崛起">蛮族之崛起</a></em><a
                                class="author" href="https://me.qidian.com/authorIndex.aspx?id=2668567"
                                data-eid="qd_F12" target="_blank">红叶公爵</a></li>
                        <li data-rid="5"><em><a class="name" href="https://book.qidian.com/info/1010707976"
                                                data-eid="qd_F11" data-bid="1010707976" target="_blank" title="巫界暴食家">巫界暴食家</a></em><a
                                class="author" href="https://me.qidian.com/authorIndex.aspx?id=401156908"
                                data-eid="qd_F12" target="_blank">小麦的呐喊</a></li>
                        <li data-rid="6"><em><a class="name" href="https://book.qidian.com/info/1010795970"
                                                data-eid="qd_F11" data-bid="1010795970" target="_blank" title="为诸神打电话">为诸神打电话</a></em><a
                                class="author" href="https://me.qidian.com/authorIndex.aspx?id=401032641"
                                data-eid="qd_F12" target="_blank">好辣</a></li>
                        <li data-rid="7"><em><a class="name" href="https://book.qidian.com/info/1010804049"
                                                data-eid="qd_F11" data-bid="1010804049" target="_blank" title="无光之月">无光之月</a></em><a
                                class="author" href="https://me.qidian.com/authorIndex.aspx?id=4067027"
                                data-eid="qd_F12" target="_blank">京城浪子</a></li>
                        <li data-rid="8"><em><a class="name" href="https://book.qidian.com/info/1009407251"
                                                data-eid="qd_F11" data-bid="1009407251" target="_blank" title="红龙传记">红龙传记</a></em><a
                                class="author" href="https://me.qidian.com/authorIndex.aspx?id=10732415"
                                data-eid="qd_F12" target="_blank">布雷龙</a></li>
                        <li data-rid="9"><em><a class="name" href="https://book.qidian.com/info/1010678713"
                                                data-eid="qd_F11" data-bid="1010678713" target="_blank"
                                                title="冰与火之凛冬已至">冰与火之凛冬已至</a></em><a class="author"
                                                                                     href="https://me.qidian.com/authorIndex.aspx?id=11883064"
                                                                                     data-eid="qd_F12" target="_blank">窄海</a>
                        </li>
                        <li data-rid="10"><em><a class="name" href="https://book.qidian.com/info/1010685191"
                                                 data-eid="qd_F11" data-bid="1010685191" target="_blank"
                                                 title="尸加工">尸加工</a></em><a class="author"
                                                                            href="https://me.qidian.com/authorIndex.aspx?id=4382119"
                                                                            data-eid="qd_F12" target="_blank">墓涂</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="channel-focus big-mode fl" id="channel-focus">
                <div class="big-list cf" data-l1="5">
                    <ul>
                        <c:forEach items="${bookList }" var="book">
                            <li data-rid="1">
                                <div class="book-shadow"></div>
                                <div class="img-box"><a href="https://book.qidian.com/info/1010741169" data-eid="qd_F13"
                                                        data-bid="1010741169" target="_blank"><img src="img/150_002.jpg"
                                                                                                   alt="贵族战记"></a></div>
                                <h3><a href="https://book.qidian.com/info/1010741169" data-eid="qd_F14"
                                       data-bid="1010741169" target="_blank">${book.title}</a></h3>
                                <p>${book.readPoint}</p></li>
                        </c:forEach>

                    </ul>
                </div>
                <div class="new-wrap cf" data-l1="6"><h3><span>新书精选</span><cite></cite></h3>
                    <ul>
                        <li data-rid="1"><a href="https://book.qidian.com/info/1010727302" data-eid="qd_F15"
                                            data-bid="1010727302"
                                            target="_blank">媒介师</a><i>·</i><span>为利益而动，媒介师穿越世界攫取财富</span></li>
                        <li data-rid="2"><a href="https://book.qidian.com/info/1010775575" data-eid="qd_F15"
                                            data-bid="1010775575" target="_blank">巫师生涯从爆炸开始</a><i>·</i><span>从炮弹爆炸开始的巫师生涯</span>
                        </li>
                        <li data-rid="3"><a href="https://book.qidian.com/info/1010782037" data-eid="qd_F15"
                                            data-bid="1010782037" target="_blank">原来我是大boss</a><i>·</i><span>今天大反派安德烈又要临幸哪个世界</span>
                        </li>
                        <li data-rid="4"><a href="https://book.qidian.com/info/1010768618" data-eid="qd_F15"
                                            data-bid="1010768618" target="_blank">暗黑召唤师之深渊召唤</a><i>·</i><span>穿越召唤师大陆，他能做的只有变强</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="notice-wrap fr">
                <div class="notice-box">
                    <div class="edit-rec" data-l1="7"><h3>编辑力荐</h3>
                        <p>白鹭最新力作来袭！</p>
                        <p class="blue"><a href="https://book.qidian.com/info/1010864272" data-eid="qd_F16"
                                           data-bid="1010864272" target="_blank">《蛊惑魔王》</a><i>·</i><a class="writer"
                                                                                                      href="https://me.qidian.com/authorIndex.aspx?id=4370119"
                                                                                                      data-eid="qd_F17"
                                                                                                      target="_blank">一行白鹭上青天</a>
                        </p></div>
                    <div class="dynamic-list" data-l1="8"><h3>频道动态</h3>
                        <ul>
                            <li data-rid="1"><a href="http://www.qidian.com/news/detail/515346276" data-eid="qd_F18"
                                                target="_blank"><em>「</em>公告<em>」</em>双倍月票嗨翻黄金周</a></li>
                            <li data-rid="2"><a href="http://www.qidian.com/news/detail/052216267" data-eid="qd_F19"
                                                target="_blank"><em>「</em>公告<em>」</em>起点网站全面安全升级</a></li>
                            <li data-rid="3"><a href="http://www.oneplus.cn/product/oneplus5?adid=ywjt_001"
                                                data-eid="qd_F110" target="_blank"><em>「</em>资讯<em>」</em>一加5 高清双摄旗舰</a>
                            </li>
                            <li data-rid="4"><a href="http://acts.qidian.com/2017/5817213/" data-eid="qd_F111"
                                                target="_blank"><em>「</em>活动<em>」</em>现实主义征文大赛</a></li>
                        </ul>
                    </div>
                </div>
                <div class="right-bottom-banner" id="tr-banner" data-l1="8">
                    <div class="op-tag"></div>
                    <a href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/sgqxz/way/1?qd_game_key=sgqxz216x100&amp;qd_dd_p1=607"
                       target="_blank" data-eid="qd_F22" data-qd_dd_p1="1" style="display: block"><img
                            src="img/0_002.jpg"></a>
                </div>
            </div>
        </div>
        <div class="new-book-wrap mb40 cf">
            <div class="type-new fl" data-l1="9">
                <div class="left-wrap"><h3 class="lang">奇幻新书</h3>
                    <div id="new-book-list">
                        <div class="type-new-list cf" data-l2="1">
                            <ul>
                                <li data-rid="1">
                                    <div class="book-img"><a href="https://book.qidian.com/info/1010819228"
                                                             data-eid="qd_F23" data-bid="1010819228"
                                                             target="_blank"><img
                                            src="img/90_015.jpg"
                                            alt="怪物制作专家"></a></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010819228"
                                                                  data-eid="qd_F24" data-bid="1010819228"
                                                                  target="_blank">谁将是怪物的下一顿美餐？</a></h4>
                                        <p>异形战狼人、触手绞杀凤凰，怪物制作专家带怪物大军来袭，谁是下一顿美餐？</p>
                                        <div class="state-box cf"><span>日更6千+</span><i>另类幻想</i><a class="author"
                                                                                                  href="https://me.qidian.com/authorIndex.aspx?id=401261157"
                                                                                                  data-eid="qd_F25"
                                                                                                  target="_blank"><img
                                                src="img/user.png">吃肉的蝎子</a>
                                        </div>
                                    </div>
                                </li>
                                <li data-rid="2">
                                    <div class="book-img"><a href="https://book.qidian.com/info/1010833508"
                                                             data-eid="qd_F23" data-bid="1010833508"
                                                             target="_blank"><img
                                            src="img/90_004.jpg"
                                            alt="恶之破碎"></a></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010833508"
                                                                  data-eid="qd_F24" data-bid="1010833508"
                                                                  target="_blank">恶之破碎，碎的不止是人心</a></h4>
                                        <p>也许自己只是一位神灵的意志化身，但绝不容忍自己受制于神！</p>
                                        <div class="state-box cf"><span>日更6千+</span><i>黑暗幻想</i><a class="author"
                                                                                                  href="https://me.qidian.com/authorIndex.aspx?id=9598836"
                                                                                                  data-eid="qd_F25"
                                                                                                  target="_blank"><img
                                                src="img/user.png">懒惰的老胡</a>
                                        </div>
                                    </div>
                                </li>
                                <li data-rid="3">
                                    <div class="book-img"><a href="https://book.qidian.com/info/1010829424"
                                                             data-eid="qd_F23" data-bid="1010829424"
                                                             target="_blank"><img
                                            src="img/90_011.jpg"
                                            alt="刺客奇航"></a></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010829424"
                                                                  data-eid="qd_F24" data-bid="1010829424"
                                                                  target="_blank">一名刺客在加勒比当船长</a></h4>
                                        <p>万物皆虚,万事皆允。一名刺客，在加勒比成为船长，为服侍光明而耕耘于黑暗</p>
                                        <div class="state-box cf"><span>日更5千+</span><i>历史神话</i><a class="author"
                                                                                                  href="https://me.qidian.com/authorIndex.aspx?id=6729062"
                                                                                                  data-eid="qd_F25"
                                                                                                  target="_blank"><img
                                                src="img/user.png">和平主义者</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="type-new-list cf" data-l2="1">
                            <ul>
                                <li data-rid="4">
                                    <div class="book-img"><a href="https://book.qidian.com/info/1010799771"
                                                             data-eid="qd_F23" data-bid="1010799771"
                                                             target="_blank"><img
                                            src="img/90_008.jpg"
                                            alt="异世界的白狼"></a></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010799771"
                                                                  data-eid="qd_F24" data-bid="1010799771"
                                                                  target="_blank">穿越到异世界的狼身上</a></h4>
                                        <p>穿越异世界，准备种田开后宫走上人生巅峰，却发现自己穿越到了狼的身上……</p>
                                        <div class="state-box cf"><span>日更3千+</span><i>剑与魔法</i><a class="author"
                                                                                                  href="https://me.qidian.com/authorIndex.aspx?id=400924978"
                                                                                                  data-eid="qd_F25"
                                                                                                  target="_blank"><img
                                                src="img/user.png">沐沐最高</a>
                                        </div>
                                    </div>
                                </li>
                                <li data-rid="5">
                                    <div class="book-img"><a href="https://book.qidian.com/info/1010796846"
                                                             data-eid="qd_F23" data-bid="1010796846"
                                                             target="_blank"><img
                                            src="img/90_013.jpg"
                                            alt="骑界巫师"></a></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010796846"
                                                                  data-eid="qd_F24" data-bid="1010796846"
                                                                  target="_blank">死神一怒，星河尽碎！</a></h4>
                                        <p>炽天一指，分江化海；死神一怒，星河尽碎！他追求究极力量！</p>
                                        <div class="state-box cf"><span>日更1千+</span><i>史诗奇幻</i><a class="author"
                                                                                                  href="https://me.qidian.com/authorIndex.aspx?id=9727645"
                                                                                                  data-eid="qd_F25"
                                                                                                  target="_blank"><img
                                                src="img/user.png">淼鱼</a>
                                        </div>
                                    </div>
                                </li>
                                <li data-rid="6">
                                    <div class="book-img"><a href="https://book.qidian.com/info/1010804130"
                                                             data-eid="qd_F23" data-bid="1010804130"
                                                             target="_blank"><img
                                            src="img/90.jpg"
                                            alt="法师亚当"></a></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010804130"
                                                                  data-eid="qd_F24" data-bid="1010804130"
                                                                  target="_blank">将亿万世界化为尘埃！</a></h4>
                                        <p>我们战无不胜，将亿万世界化为尘埃，你们这些区区蝼蚁，终将灰飞烟灭。</p>
                                        <div class="state-box cf"><span>日更5千+</span><i>剑与魔法</i><a class="author"
                                                                                                  href="https://me.qidian.com/authorIndex.aspx?id=11086407"
                                                                                                  data-eid="qd_F25"
                                                                                                  target="_blank"><img
                                                src="img/user.png">流泪的啤酒</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="type-new-list cf" data-l2="1">
                            <ul>
                                <li data-rid="7">
                                    <div class="book-img"><a href="https://book.qidian.com/info/1010796024"
                                                             data-eid="qd_F23" data-bid="1010796024"
                                                             target="_blank"><img
                                            src="img/90_014.jpg"
                                            alt="诸神世界的巫师"></a></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010796024"
                                                                  data-eid="qd_F24" data-bid="1010796024"
                                                                  target="_blank">巫师在诸神世界大展神通</a></h4>
                                        <p>终末之战后，巫师绝迹，诸神显踪。当巫师维恩来到这个世界，会带来什么？</p>
                                        <div class="state-box cf"><span>日更千字</span><i>剑与魔法</i><a class="author"
                                                                                                 href="https://me.qidian.com/authorIndex.aspx?id=401271097"
                                                                                                 data-eid="qd_F25"
                                                                                                 target="_blank"><img
                                                src="img/user.png">邑唐书生</a>
                                        </div>
                                    </div>
                                </li>
                                <li data-rid="8">
                                    <div class="book-img"><a href="https://book.qidian.com/info/1010807146"
                                                             data-eid="qd_F23" data-bid="1010807146"
                                                             target="_blank"><img
                                            src="img/90_012.jpg"
                                            alt="从零开始的吸血鬼生活"></a></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010807146"
                                                                  data-eid="qd_F24" data-bid="1010807146"
                                                                  target="_blank">从零开始学做吸血鬼</a></h4>
                                        <p>我穿越了，成了吸血鬼，开始了新的生活。一切从零开始。</p>
                                        <div class="state-box cf"><span>日更1千+</span><i>剑与魔法</i><a class="author"
                                                                                                  href="https://me.qidian.com/authorIndex.aspx?id=11856661"
                                                                                                  data-eid="qd_F25"
                                                                                                  target="_blank"><img
                                                src="img/user.png">银鸷</a>
                                        </div>
                                    </div>
                                </li>
                                <li data-rid="9">
                                    <div class="book-img"><a href="https://book.qidian.com/info/1010804063"
                                                             data-eid="qd_F23" data-bid="1010804063"
                                                             target="_blank"><img
                                            src="img/90_005.jpg"
                                            alt="印记之塔"></a></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010804063"
                                                                  data-eid="qd_F24" data-bid="1010804063"
                                                                  target="_blank">进入印记城请按#号键</a></h4>
                                        <p>1.进入印记城请按#号键；2.兑换最新《奥术》期刊，请按*号键</p>
                                        <div class="state-box cf"><span>日更3千+</span><i>剑与魔法</i><a class="author"
                                                                                                  href="https://me.qidian.com/authorIndex.aspx?id=401282704"
                                                                                                  data-eid="qd_F25"
                                                                                                  target="_blank"><img
                                                src="img/user.png">方一点</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right-rank fr">
                <div class="rank-list" data-l1="14"><h3 class="wrap-title lang">奇幻新书榜</h3>
                    <div class="book-list">
                        <ul>
                            <li class="unfold" data-rid="1">
                                <div class="book-wrap cf">
                                    <div class="book-info fl"><h3>NO.1</h3><h4><a
                                            href="https://book.qidian.com/info/1010864272" data-eid="qd_F63"
                                            data-bid="1010864272" target="_blank">蛊惑魔王</a></h4>
                                        <p class="digital"><em>5626</em>周点击</p>
                                        <p class="author"><a class="type"
                                                             href="https://www.qidian.com/all?chanId=1&amp;subCateId=202"
                                                             target="_blank">黑暗幻想</a><i>·</i><a class="writer"
                                                                                                href="https://me.qidian.com/authorIndex.aspx?id=4370119"
                                                                                                target="_blank">一行白鹭上青天</a>
                                        </p></div>
                                    <div class="book-cover"><a class="link"
                                                               href="https://book.qidian.com/info/1010864272"
                                                               data-eid="qd_F63" data-bid="1010864272"
                                                               target="_blank"><img
                                            src="img/90_006.jpg"
                                            alt="蛊惑魔王"></a><span></span></div>
                                </div>
                            </li>
                            <li data-rid="2">
                                <div class="num-box"><span class="num2">2</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010829475"
                                                         data-eid="qd_F63" data-bid="1010829475"
                                                         target="_blank">喵霸</a><i class="total">3284</i></div>
                            </li>
                            <li data-rid="3">
                                <div class="num-box"><span class="num3">3</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010822532"
                                                         data-eid="qd_F63" data-bid="1010822532"
                                                         target="_blank">漫威神王之子</a><i class="total">2197</i></div>
                            </li>
                            <li data-rid="4">
                                <div class="num-box"><span class="num4">4</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010854544"
                                                         data-eid="qd_F63" data-bid="1010854544"
                                                         target="_blank">使徒苏醒的漫威</a><i class="total">2120</i></div>
                            </li>
                            <li data-rid="5">
                                <div class="num-box"><span class="num5">5</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010804049"
                                                         data-eid="qd_F63" data-bid="1010804049"
                                                         target="_blank">无光之月</a><i class="total">969</i></div>
                            </li>
                            <li data-rid="6">
                                <div class="num-box"><span class="num6">6</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010829424"
                                                         data-eid="qd_F63" data-bid="1010829424"
                                                         target="_blank">刺客奇航</a><i class="total">911</i></div>
                            </li>
                            <li data-rid="7">
                                <div class="num-box"><span class="num7">7</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010833508"
                                                         data-eid="qd_F63" data-bid="1010833508"
                                                         target="_blank">恶之破碎</a><i class="total">780</i></div>
                            </li>
                            <li data-rid="8">
                                <div class="num-box"><span class="num8">8</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010826783"
                                                         data-eid="qd_F63" data-bid="1010826783" target="_blank">绝境长城上的王者</a><i
                                        class="total">714</i></div>
                            </li>
                            <li data-rid="9">
                                <div class="num-box"><span class="num9">9</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010795970"
                                                         data-eid="qd_F63" data-bid="1010795970"
                                                         target="_blank">为诸神打电话</a><i class="total">554</i></div>
                            </li>
                            <li data-rid="10">
                                <div class="num-box"><span class="num10">10</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010819228"
                                                         data-eid="qd_F63" data-bid="1010819228"
                                                         target="_blank">怪物制作专家</a><i class="total">543</i></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner-wrap box-center mb40" id="banner1" data-l1="34"><a
                href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/yjmxz/way/1?qd_game_key=yjmxz1200x100&amp;qd_dd_p1=804"
                data-eid="qd_F36" data-qd_dd_p1="1" target="_blank" style="display: inline;"><img
                src="img/0.jpg"><span
                class="op-tag"></span></a><a href="javascript:" data-eid="qd_F36" data-qd_dd_p1="1"
                                             target="_blank"><span class="op-tag"></span></a></div>
        <div class="serial-wrap cf">
            <div class="popular-serial fl">
                <div class="left-wrap"><h3 class="lang">人气连载</h3>
                    <div class="popular-wrap cf" data-l1="10">
                        <div class="slider-wrap fl" data-l2="1">
                            <div class="slide-box" id="left-slide-01" style="display: block;">
                                <ul id="box" class="box">
                                    <li class="list" data-index="4" data-rel="jCon3" data-rid="3"><a href="javascript:"
                                                                                                     class="img"
                                                                                                     data-link="//book.qidian.com/info/1005787616"
                                                                                                     data-eid="qd_F28"
                                                                                                     data-bid="1005787616"
                                                                                                     target=""><img
                                            src="img/150_006.jpg"></a>
                                    </li>
                                    <li class="list" data-index="3" data-rel="jCon2" data-rid="2"><a href="javascript:"
                                                                                                     class="img"
                                                                                                     data-link="//book.qidian.com/info/1010204993"
                                                                                                     data-eid="qd_F28"
                                                                                                     data-bid="1010204993"
                                                                                                     target=""><img
                                            src="img/300.jpg"></a>
                                    </li>
                                    <li class="list" data-index="2" data-rel="jCon1" data-rid="1"><a href="javascript:"
                                                                                                     class="img"
                                                                                                     data-link="//book.qidian.com/info/1010190104"
                                                                                                     data-eid="qd_F28"
                                                                                                     data-bid="1010190104"
                                                                                                     target=""><img
                                            src="img/150_003.jpg"></a>
                                    </li>
                                    <li class="list active" data-index="1" data-rel="jCon4" data-rid="4"><a
                                            href="https://book.qidian.com/info/1003249295" class="img"
                                            data-link="//book.qidian.com/info/1003249295" data-eid="qd_F28"
                                            data-bid="1003249295" target="_blank"><img
                                            src="img/150_005.jpg"></a>
                                    </li>
                                </ul>
                                <div class="content">
                                    <dl>
                                        <dd class="detail" id="jCon1" data-rid="1"><h4><a
                                                href="https://book.qidian.com/info/1010190104" data-eid="qd_F30"
                                                data-bid="1010190104" target="_blank">半精灵位面之旅</a></h4>
                                            <p class="red"><a class="writer"
                                                              href="https://me.qidian.com/authorIndex.aspx?id=4059210"
                                                              data-eid="qd_F29"
                                                              target="_blank">三秒不过岗</a><em>·</em><span>7.1分</span></p>
                                            <p><i>351,279</i><span>人气</span></p>
                                            <p>穿越成一个半精灵弃儿，生存成了第一问题，之后才考虑敌人是否生存的问题。</p><a class="read-btn"
                                                                                         href="https://book.qidian.com/info/1010190104"
                                                                                         data-eid="qd_F31"
                                                                                         target="_blank">书籍详情</a></dd>
                                        <dd class="detail" id="jCon2" data-rid="2"><h4><a
                                                href="https://book.qidian.com/info/1010204993" target="_blank"
                                                data-eid="qd_F30" data-bid="1010204993">娜迦神族</a></h4>
                                            <p class="red"><a class="writer"
                                                              href="https://me.qidian.com/authorIndex.aspx?id=6825550"
                                                              target="_blank" data-eid="qd_F29">越州</a><em>·</em><span>7.3分</span>
                                            </p>
                                            <p><i>714,247</i>人气</p>
                                            <p>穿越娜迦黑海第二顺位继承人，做母系氏族当中的纯爷们。</p><a class="read-btn"
                                                                                href="https://book.qidian.com/info/1010204993"
                                                                                data-eid="qd_F31" data-bid="1010204993"
                                                                                target="_blank">书籍详情</a></dd>
                                        <dd class="detail" id="jCon3" data-rid="3"><h4><a
                                                href="https://book.qidian.com/info/1005787616" target="_blank"
                                                data-eid="qd_F30" data-bid="1005787616">革命吧女神</a></h4>
                                            <p class="red"><a class="writer"
                                                              href="https://me.qidian.com/authorIndex.aspx?id=2525946"
                                                              target="_blank" data-eid="qd_F29">草上匪</a><em>·</em><span>7.5分</span>
                                            </p>
                                            <p><i>2,352,522</i>人气</p>
                                            <p>在凡人蝼蚁不如的世界中掀起轰轰烈烈的凡人革命。</p><a class="read-btn"
                                                                             href="https://book.qidian.com/info/1005787616"
                                                                             data-eid="qd_F31" data-bid="1005787616"
                                                                             target="_blank">书籍详情</a></dd>
                                        <dd class="detail active" id="jCon4" data-rid="4"><h4><a
                                                href="https://book.qidian.com/info/1003249295" target="_blank"
                                                data-eid="qd_F30" data-bid="1003249295">哈利波特与秘密宝藏</a></h4>
                                            <p class="red"><a class="writer"
                                                              href="https://me.qidian.com/authorIndex.aspx?id=6053873"
                                                              target="_blank"
                                                              data-eid="qd_F29">喵星人家的汪</a><em>·</em><span>8.2分</span>
                                            </p>
                                            <p><i>8,534,521</i>人气</p>
                                            <p>穿越哈利波特魔法世界，走格兰芬多线，在霍格沃兹展开魔法冒险</p><a class="read-btn"
                                                                                   href="https://book.qidian.com/info/1003249295"
                                                                                   data-eid="qd_F31"
                                                                                   data-bid="1003249295"
                                                                                   target="_blank">书籍详情</a></dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <div class="pop-list channel-book-list big-mode fl">
                            <ul>
                                <li class="have-img" data-rid="1" data-l2="2">
                                    <div class="book-img fl"><a href="https://book.qidian.com/info/1010264382"
                                                                data-eid="qd_F32" data-bid="" target="_blank"><img
                                            class="lazy"
                                            src="img/default_book.png"
                                            data-original="//qidian.qpic.cn/qdbimg/349573/1010264382/90"
                                            alt="巫师的旅途"><span>7.2</span></a></div>
                                    <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010264382"
                                                                     data-eid="qd_F33" data-bid="" target="_blank"
                                                                     title="巫师的旅途">巫师的旅途</a></h4>
                                        <p class="intro">穿越将死老人，余命无多，他要如何续命</p>
                                        <div class="state-box cf"><a class="author"
                                                                     href="https://me.qidian.com/authorIndex.aspx?id=11816091"
                                                                     data-eid="qd_F34" target="_blank"><img
                                                src="img/user.png">好大的白兔</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="have-img" data-rid="2" data-l2="2">
                                    <div class="book-img fl"><a href="https://book.qidian.com/info/1004897709"
                                                                data-eid="qd_F32" data-bid="" target="_blank"><img
                                            class="lazy"
                                            src="img/default_book.png"
                                            data-original="//qidian.qpic.cn/qdbimg/349573/1004897709/90"
                                            alt="黑巫师朱鹏"><span>8.3</span></a></div>
                                    <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1004897709"
                                                                     data-eid="qd_F33" data-bid="" target="_blank"
                                                                     title="黑巫师朱鹏">黑巫师朱鹏</a></h4>
                                        <p class="intro">哪怕我只是一条咸鱼，也要可劲扑腾！</p>
                                        <div class="state-box cf"><a class="author"
                                                                     href="https://me.qidian.com/authorIndex.aspx?id=3618517"
                                                                     data-eid="qd_F34" target="_blank"><img
                                                src="img/user.png">狂翻的咸鱼2</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="have-img" data-rid="3" data-l2="2">
                                    <div class="book-img fl"><a href="https://book.qidian.com/info/1009644207"
                                                                data-eid="qd_F32" data-bid="" target="_blank"><img
                                            class="lazy"
                                            src="img/default_book.png"
                                            data-original="//qidian.qpic.cn/qdbimg/349573/1009644207/90"
                                            alt="莽穿新世界"><span>7.2</span></a></div>
                                    <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1009644207"
                                                                     data-eid="qd_F33" data-bid="" target="_blank"
                                                                     title="莽穿新世界">莽穿新世界</a></h4>
                                        <p class="intro">玩家群穿游戏世界，改变自己也改变世界</p>
                                        <div class="state-box cf"><a class="author"
                                                                     href="https://me.qidian.com/authorIndex.aspx?id=4362231"
                                                                     data-eid="qd_F34" target="_blank"><img
                                                src="img/user.png">楚白</a>
                                        </div>
                                    </div>
                                </li>
                                <li data-rid="4" data-l2="3">
                                    <div class="no-img-info"><h4><a href="https://book.qidian.com/info/1010566455"
                                                                    data-eid="qd_F35" data-bookid="1010566455"
                                                                    target="_blank" title="龙的小本本">龙的小本本</a></h4>
                                        <p>是龙是神亦是仙，你们俱与我有缘。</p></div>
                                </li>
                                <li data-rid="5" data-l2="3">
                                    <div class="no-img-info"><h4><a href="https://book.qidian.com/info/1010612101"
                                                                    data-eid="qd_F35" data-bookid="1010612101"
                                                                    target="_blank" title="霸主降临异世界">霸主降临异世界</a></h4>
                                        <p>地球步入末日，那就移民异界当皇帝！</p></div>
                                </li>
                                <li data-rid="6" data-l2="3">
                                    <div class="no-img-info"><h4><a href="https://book.qidian.com/info/1010493819"
                                                                    data-eid="qd_F35" data-bookid="1010493819"
                                                                    target="_blank" title="薇山王朝之女妖成群">薇山王朝之女妖成群</a></h4>
                                        <p>与女妖合作，开启开挂人生</p></div>
                                </li>
                                <li data-rid="7" data-l2="3">
                                    <div class="no-img-info"><h4><span>7.4<em>分</em></span><a
                                            href="https://book.qidian.com/info/1009711525" data-eid="qd_F35"
                                            data-bookid="1009711525" target="_blank" title="耐瑟瑞尔的辉煌">耐瑟瑞尔的辉煌</a></h4>
                                        <p>做别人的强敌，向耐瑟瑞尔的辉煌进发</p></div>
                                </li>
                                <li data-rid="8" data-l2="3">
                                    <div class="no-img-info"><h4><span>7.7<em>分</em></span><a
                                            href="https://book.qidian.com/info/1162069" data-eid="qd_F35"
                                            data-bookid="1162069" target="_blank" title="龙零">龙零</a></h4>
                                        <p>龙零之前无数魔法，龙零之后永无魔法！</p></div>
                                </li>
                                <li data-rid="9" data-l2="3">
                                    <div class="no-img-info"><h4><span>7.4<em>分</em></span><a
                                            href="https://book.qidian.com/info/1004081229" data-eid="qd_F35"
                                            data-bookid="1004081229" target="_blank" title="刻之痕">刻之痕</a></h4>
                                        <p>少年成长为圣骑士的欢脱故事</p></div>
                                </li>
                                <li data-rid="10" data-l2="3">
                                    <div class="no-img-info"><h4><span>7.4<em>分</em></span><a
                                            href="https://book.qidian.com/info/1007974533" data-eid="qd_F35"
                                            data-bookid="1007974533" target="_blank" title="烂尾鼠">烂尾鼠</a></h4>
                                        <p>重生月光鼠，点燃神火创造新世界</p></div>
                                </li>
                                <li data-rid="11" data-l2="3">
                                    <div class="no-img-info"><h4><span>7.3<em>分</em></span><a
                                            href="https://book.qidian.com/info/1009629214" data-eid="qd_F35"
                                            data-bookid="1009629214" target="_blank" title="从巨人城废墟开始的探险">从巨人城废墟开始的探险</a>
                                    </h4>
                                        <p>带高冷系统，在无数世界跌宕起伏</p></div>
                                </li>
                                <li data-rid="12" data-l2="3">
                                    <div class="no-img-info"><h4><a href="https://book.qidian.com/info/1009633186"
                                                                    data-eid="qd_F35" data-bookid="1009633186"
                                                                    target="_blank" title="科学神教">科学神教</a></h4>
                                        <p>这个世界的科学家，会搓大火球术？</p></div>
                                </li>
                                <li data-rid="13" data-l2="3">
                                    <div class="no-img-info"><h4><span>7.1<em>分</em></span><a
                                            href="https://book.qidian.com/info/1006685897" data-eid="qd_F35"
                                            data-bookid="1006685897" target="_blank" title="术士的低语">术士的低语</a></h4>
                                        <p>来自异界的灵魂，在术士的世界发出低语</p></div>
                                </li>
                                <li data-rid="14" data-l2="3">
                                    <div class="no-img-info"><h4><a href="https://book.qidian.com/info/1005016554"
                                                                    data-eid="qd_F35" data-bookid="1005016554"
                                                                    target="_blank" title="HP魔法传记">HP魔法传记</a></h4>
                                        <p>在哈利波特的魔法世界中展开冒险</p></div>
                                </li>
                                <li data-rid="15" data-l2="3">
                                    <div class="no-img-info"><h4><a href="https://book.qidian.com/info/1009993232"
                                                                    data-eid="qd_F35" data-bookid="1009993232"
                                                                    target="_blank" title="巫师重建">巫师重建</a></h4>
                                        <p>巫师在末日后的魔法世界重建斗争</p></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right-rank fr">
                <div class="rank-list sort-list" data-l1="15"><h3 class="wrap-title lang">24小时奇幻热销榜<a class="more"
                                                                                                      href="https://www.qidian.com/rank/hotsales?chn=1"
                                                                                                      target="_blank">更多<em
                        class="iconfont"></em></a></h3>
                    <div class="book-list">
                        <ul>
                            <li class="unfold" data-rid="1">
                                <div class="book-wrap cf">
                                    <div class="book-info fl"><h3>NO.1</h3><h4><a
                                            href="https://book.qidian.com/info/1003306811" data-eid="qd_F63"
                                            data-bid="1003306811" target="_blank">放开那个女巫</a></h4>
                                        <p class="digital f16">销量冠军</p>
                                        <p class="author"><a class="type"
                                                             href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                                             target="_blank">史诗奇幻</a><i>·</i><a class="writer"
                                                                                                href="https://me.qidian.com/authorIndex.aspx?id=6052114"
                                                                                                target="_blank">二目</a>
                                        </p></div>
                                    <div class="book-cover"><a class="link"
                                                               href="https://book.qidian.com/info/1003306811"
                                                               data-eid="qd_F63" data-bid="1003306811"
                                                               target="_blank"><img
                                            src="img/90_010.jpg"
                                            alt="放开那个女巫"></a><span></span></div>
                                </div>
                            </li>
                            <li data-rid="2">
                                <div class="num-box"><span class="num2">2</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1003543215"
                                                         data-eid="qd_F63" data-bid="1003543215"
                                                         target="_blank">恐怖广播</a><span class="iconfont"></span></div>
                            </li>
                            <li data-rid="3">
                                <div class="num-box"><span class="num3">3</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1004995908"
                                                         data-eid="qd_F63" data-bid="1004995908"
                                                         target="_blank">漫威世界的术士</a><span class="iconfont up"></span>
                                </div>
                            </li>
                            <li data-rid="4">
                                <div class="num-box"><span class="num4">4</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/3268922"
                                                         data-eid="qd_F63" data-bid="3268922"
                                                         target="_blank">巫师之旅</a><span class="iconfont up"></span>
                                </div>
                            </li>
                            <li data-rid="5">
                                <div class="num-box"><span class="num5">5</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1003441527"
                                                         data-eid="qd_F63" data-bid="1003441527"
                                                         target="_blank">暴风法神</a><span class="iconfont up"></span>
                                </div>
                            </li>
                            <li data-rid="6">
                                <div class="num-box"><span class="num6">6</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1007994514"
                                                         data-eid="qd_F63" data-bid="1007994514"
                                                         target="_blank">巫师亚伯</a><span class="iconfont"></span></div>
                            </li>
                            <li data-rid="7">
                                <div class="num-box"><span class="num7">7</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1004897709"
                                                         data-eid="qd_F63" data-bid="1004897709"
                                                         target="_blank">黑巫师朱鹏</a><span class="iconfont up"></span>
                                </div>
                            </li>
                            <li data-rid="8">
                                <div class="num-box"><span class="num8">8</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1017141"
                                                         data-eid="qd_F63" data-bid="1017141"
                                                         target="_blank">盘龙</a><span class="iconfont"></span></div>
                            </li>
                            <li data-rid="9">
                                <div class="num-box"><span class="num9">9</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1005818830"
                                                         data-eid="qd_F63" data-bid="1005818830"
                                                         target="_blank">霜寒之翼</a><span class="iconfont"></span></div>
                            </li>
                            <li data-rid="10">
                                <div class="num-box"><span class="num10">10</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010032521"
                                                         data-eid="qd_F63" data-bid="1010032521"
                                                         target="_blank">巫师不朽</a><span class="iconfont"></span></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="hot-type-wrap cf">
            <div class="left-wrap fl" data-l1="11"><h3 class="lang">热门分类</h3>
                <div class="hot-type-block mb30 cf" data-l2="1">
                    <div class="sub-type-info fl" data-l3="1">
                        <div class="inner">
                            <div class="type-info"><h4><em>「</em><b class="lang">史诗奇幻</b><em>」</em></h4>
                                <p>恢弘的世界观，冒险上牵扯到国家甚至世界的命运</p><a class="blue"
                                                                href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                                                data-eid="qd_F37" target="_blank">查看全部<span
                                        class="iconfont"></span></a></div>
                            <div class="author-info">
                                <div class="relation"><h4>奇幻作家</h4>
                                    <p class="writer"><a class="blue"
                                                         href="https://me.qidian.com/authorIndex.aspx?id=400910648"
                                                         data-eid="qd_F38" target="_blank">阴间人</a></p>
                                    <p class="state">更新了作品<a class="blue" href="https://book.qidian.com/info/1010520204"
                                                             data-eid="qd_F39" data-bid="1010520204" target="_blank">《魔炎之皇》</a>
                                    </p></div>
                                <div class="photo"><a href="https://me.qidian.com/authorIndex.aspx?id=400910648"
                                                      data-eid="qd_F40" target="_blank"><img class="lazy"
                                                                                             src="img/author_boy.png"
                                                                                             data-original="//facepic.qidian.com/qd_face/349573/0/100"><span>Lv.0</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sub-type-list channel-book-list fl" data-l3="2">
                        <ul>
                            <li class="have-img" data-rid="1">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1009722827"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1009722827/90" alt="魔术冠争"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1009722827"
                                                                 data-eid="qd_F42" data-bid="1009722827" target="_blank"
                                                                 title="魔术冠争">魔术冠争</a></h4>
                                    <p class="intro">逍遥洒脱放浪不羁，做偏离点的幻想清道夫</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=400118606"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">迷标</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="2">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010575317"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010575317/90" alt="吾主天命"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010575317"
                                                                 data-eid="qd_F42" data-bid="1010575317" target="_blank"
                                                                 title="吾主天命">吾主天命</a></h4>
                                    <p class="intro">站立与人间的巅峰，生命的奥秘探破时间真谛</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=12682366"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">汉野</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="3">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010639083"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010639083/90" alt="灵域魔王"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010639083"
                                                                 data-eid="qd_F42" data-bid="1010639083" target="_blank"
                                                                 title="灵域魔王">灵域魔王</a></h4>
                                    <p class="intro">世界被卷入灵域，生存成为唯一的法则</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=401095304"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">终末的北极熊</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="4">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010578395"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010578395/90" alt="恶魔成长录"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010578395"
                                                                 data-eid="qd_F42" data-bid="1010578395" target="_blank"
                                                                 title="恶魔成长录">恶魔成长录</a></h4>
                                    <p class="intro">讲述一个人类，为何蜕变为恶魔</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=11985886"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">心杀墨贝尔</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="5">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010545873"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010545873/90" alt="燃烧的日常"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010545873"
                                                                 data-eid="qd_F42" data-bid="1010545873" target="_blank"
                                                                 title="燃烧的日常">燃烧的日常</a></h4>
                                    <p class="intro">穿越艾泽拉斯，却连野猪也杀不死？</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=3910560"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">邦巴迪尔</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="6">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010836124"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010836124/90" alt="方舟新纪元"><span>9.7</span></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010836124"
                                                                 data-eid="qd_F42" data-bid="1010836124" target="_blank"
                                                                 title="方舟新纪元">方舟新纪元</a></h4>
                                    <p class="intro">穿越史前，驯养恐龙，在战火中崛起</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=7798986"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">易水之秋</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <h3></h3>
                <div class="hot-type-block mb30 cf" data-l2="2">
                    <div class="sub-type-info fl" data-l3="1">
                        <div class="inner">
                            <div class="type-info"><h4><em>「</em><b class="lang">剑与魔法</b><em>」</em></h4>
                                <p>主角或者小团队的冒险故事，故事性质偏重于个人英雄传奇</p><a class="blue"
                                                                    href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                                                    data-eid="qd_F37" target="_blank">查看全部<span
                                        class="iconfont"></span></a></div>
                            <div class="author-info">
                                <div class="relation"><h4>奇幻作家</h4>
                                    <p class="writer"><a class="blue"
                                                         href="https://me.qidian.com/authorIndex.aspx?id=400355691"
                                                         data-eid="qd_F38" target="_blank">章仇楚</a></p>
                                    <p class="state">更新了作品<a class="blue" href="https://book.qidian.com/info/1009975612"
                                                             data-eid="qd_F39" data-bookid="1009975612" target="_blank">《锡林的战法师》</a>
                                    </p></div>
                                <div class="photo"><a href="https://me.qidian.com/authorIndex.aspx?id=400355691"
                                                      data-eid="qd_F40" target="_blank"><img class="lazy"
                                                                                             src="img/author_boy.png"
                                                                                             data-original="//facepic.qidian.com/qd_face/349573/0/100"><span>Lv.0</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sub-type-list channel-book-list fl" data-l3="2">
                        <ul>
                            <li class="have-img" data-rid="1">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010834735"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010834735/90" alt="吞噬深渊之龙"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010834735"
                                                                 data-eid="qd_F42" data-bid="1010834735" target="_blank"
                                                                 title="吞噬深渊之龙">吞噬深渊之龙</a></h4>
                                    <p class="intro">抑郁症患者穿越黑龙，思路广阔放飞自我</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=6974255"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">圣尤利西斯</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="2">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010655704"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010655704/90" alt="异世界的领主"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010655704"
                                                                 data-eid="qd_F42" data-bid="1010655704" target="_blank"
                                                                 title="异世界的领主">异世界的领主</a></h4>
                                    <p class="intro">重生西方领主，在异界建立另一个大秦帝国</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=400130119"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">凌尸馋</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="3">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010864095"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010864095/90"
                                        alt="傀儡皇帝的人形机甲修炼手册"></a></div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010864095"
                                                                 data-eid="qd_F42" data-bid="1010864095" target="_blank"
                                                                 title="傀儡皇帝的人形机甲修炼手册">傀儡皇帝的人形机甲修炼手册</a></h4>
                                    <p class="intro">穿越帝国皇帝，但对手却是星际文明</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=3793581"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">嗷星小领主</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="4">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010848913"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010848913/90" alt="古神之触"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010848913"
                                                                 data-eid="qd_F42" data-bid="1010848913" target="_blank"
                                                                 title="古神之触">古神之触</a></h4>
                                    <p class="intro">穿越恩佐斯，触手挑动艾泽拉斯的风云</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=401335376"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">玉泽生</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="5">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010800756"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010800756/90" alt="人之王与魔之神"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010800756"
                                                                 data-eid="qd_F42" data-bid="1010800756" target="_blank"
                                                                 title="人之王与魔之神">人之王与魔之神</a></h4>
                                    <p class="intro">这个时代属于人的王者和魔的神明！</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=12146033"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">宸叠</a>
                                    </div>
                                </div>
                            </li>
                            <li class="have-img" data-rid="6">
                                <div class="book-img fl"><a href="https://book.qidian.com/info/1010798179"
                                                            data-eid="qd_F41" data-bid="" target="_blank"><img
                                        class="lazy"
                                        src="img/default_book.png"
                                        data-original="//qidian.qpic.cn/qdbimg/349573/1010798179/90" alt="阿古斯深渊"></a>
                                </div>
                                <div class="book-info fl"><h4><a href="https://book.qidian.com/info/1010798179"
                                                                 data-eid="qd_F42" data-bid="1010798179" target="_blank"
                                                                 title="阿古斯深渊">阿古斯深渊</a></h4>
                                    <p class="intro">幼小血精灵，踏入无尽的阿古斯深渊</p>
                                    <div class="state-box cf"><a class="author"
                                                                 href="https://me.qidian.com/authorIndex.aspx?id=401275471"
                                                                 data-eid="qd_F43" target="_blank"><img
                                            src="img/user.png">德拉瑞尔</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="hot-type-block cf">
                    <div class="bottom" data-l2="3"><h3></h3>
                        <div class="sub-type-info fl" data-l3="1">
                            <div class="inner">
                                <div class="type-info"><h4><em>「</em><b class="lang">黑暗幻想</b><em>」</em></h4>
                                    <p>黑暗与压抑的阅读气氛，有着较多叛逆式的黑暗英雄</p><a class="blue"
                                                                     href="https://www.qidian.com/all?chanId=1&amp;subCateId=202"
                                                                     data-eid="qd_F44" target="_blank">查看全部<span
                                            class="iconfont"></span></a></div>
                                <div class="type-book-wrap">
                                    <div class="book-cover"><a class="link"
                                                               href="https://book.qidian.com/info/1010772593"
                                                               data-eid="qd_F45" data-bid="1010772593"
                                                               target="_blank"><img
                                            src="img/90_007.jpg"
                                            alt="头号天敌"></a><span></span></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010772593"
                                                                  data-eid="qd_F46" data-bid="1010772593"
                                                                  target="_blank" title="头号天敌">头号天敌</a></h4>
                                        <p><a class="author" href="https://me.qidian.com/authorIndex.aspx?id=401245685"
                                              data-eid="qd_F47" target="_blank"><img
                                                src="img/user.png">铁在烧</a>
                                        </p>
                                        <p>龙王对波塞冬，杨戬对阿瑞斯，一切大乱</p></div>
                                </div>
                            </div>
                        </div>
                        <div class="bottom-book-list fl" data-l3="2">
                            <ul>
                                <li data-rid="2"><h4><a href="https://book.qidian.com/info/1010828213" data-eid="qd_F48"
                                                        data-bid="1010828213" target="_blank"
                                                        title="众神的world">众神的world</a></h4>
                                    <p>众神无法插足人间，他们动起了歪脑筋…</p></li>
                                <li data-rid="3"><h4><a href="https://book.qidian.com/info/1010827446" data-eid="qd_F48"
                                                        data-bid="1010827446" target="_blank"
                                                        title="系统之骑士王传说">系统之骑士王传说</a></h4>
                                    <p>骑士式微，他如何用一杆长枪捅出新天地</p></li>
                                <li data-rid="4"><h4><a href="https://book.qidian.com/info/1010804509" data-eid="qd_F48"
                                                        data-bid="1010804509" target="_blank" title="恩泽与纷争">恩泽与纷争</a>
                                </h4>
                                    <p>工科男穿越异界，逗比种田之旅</p></li>
                                <li data-rid="5"><h4><a href="https://book.qidian.com/info/1010738240" data-eid="qd_F48"
                                                        data-bid="1010738240" target="_blank" title="魔法朋友圈">魔法朋友圈</a>
                                </h4>
                                    <p>加了同桌微信，我的朋友圈就哪里不对</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="bottom" data-l2="4"><h3></h3>
                        <div class="sub-type-info fl" data-l3="1">
                            <div class="inner">
                                <div class="type-info"><h4><em>「</em><b class="lang">现代魔法</b><em>」</em></h4>
                                    <p>背景设定在现代世界，糅合了魔法元素的作品</p><a class="blue"
                                                                  href="https://www.qidian.com/all?chanId=1&amp;subCateId=38"
                                                                  data-eid="qd_F44" target="_blank">查看全部<span
                                            class="iconfont"></span></a></div>
                                <div class="type-book-wrap">
                                    <div class="book-cover"><a class="link"
                                                               href="https://book.qidian.com/info/1010802306"
                                                               data-eid="qd_F45" data-bid="1010802306"
                                                               target="_blank"><img
                                            src="img/90_002.jpg"
                                            alt="行走于神话世界"></a><span></span></div>
                                    <div class="book-info"><h4><a href="https://book.qidian.com/info/1010802306"
                                                                  data-eid="qd_F46" data-bid="1010802306"
                                                                  target="_blank" title="行走于神话世界">行走于神话世界</a></h4>
                                        <p><a class="author" href="https://me.qidian.com/authorIndex.aspx?id=400991567"
                                              data-eid="qd_F47" target="_blank"><img
                                                src="img/user.png">云梦山中人</a>
                                        </p>
                                        <p>这世界上的一切神秘，将展现在我的面前</p></div>
                                </div>
                            </div>
                        </div>
                        <div class="bottom-book-list fl" data-l3="2">
                            <ul>
                                <li data-rid="2"><h4><a href="https://book.qidian.com/info/1010854739" data-eid="qd_F48"
                                                        data-bid="1010854739" target="_blank" title="剑与地下城">剑与地下城</a>
                                </h4>
                                    <p>苍穹为之变色，火的力量是我见过的神迹</p></li>
                                <li data-rid="3"><h4><a href="https://book.qidian.com/info/1010805492" data-eid="qd_F48"
                                                        data-bid="1010805492" target="_blank" title="环海之王">环海之王</a></h4>
                                    <p>话痨废柴神与穿越者的欢乐日常</p></li>
                                <li data-rid="4"><h4><a href="https://book.qidian.com/info/1007064401" data-eid="qd_F48"
                                                        data-bid="1007064401" target="_blank" title="走天路">走天路</a></h4>
                                    <p>少年捡到神秘镜子，与镜中人展开旅途</p></li>
                                <li data-rid="5"><h4><a href="https://book.qidian.com/info/1010855774" data-eid="qd_F48"
                                                        data-bid="1010855774" target="_blank" title="圣灵之争霸">圣灵之争霸</a>
                                </h4>
                                    <p>诸神与深渊恶魔征战一个又一个位面</p></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right-rank fr">
                <div class="rank-list" data-l1="16"><h3 class="wrap-title lang">奇幻月票榜<a class="more"
                                                                                        href="https://www.qidian.com/rank/yuepiao?chn=1"
                                                                                        target="_blank">更多<em
                        class="iconfont"></em></a></h3>
                    <div class="book-list">
                        <ul>
                            <li class="unfold" data-rid="1">
                                <div class="book-wrap cf">
                                    <div class="book-info fl"><h3>NO.1</h3><h4><a
                                            href="https://book.qidian.com/info/1003543215" data-eid="qd_F63"
                                            data-bid="1003543215" target="_blank">恐怖广播</a></h4>
                                        <p class="digital"><em>6422</em>月票</p>
                                        <p class="author"><a class="type"
                                                             href="https://www.qidian.com/all?chanId=1&amp;subCateId=202"
                                                             target="_blank">黑暗幻想</a><i>·</i><a class="writer"
                                                                                                href="https://me.qidian.com/authorIndex.aspx?id=3780268"
                                                                                                target="_blank">纯洁滴小龙</a>
                                        </p></div>
                                    <div class="book-cover"><a class="link"
                                                               href="https://book.qidian.com/info/1003543215"
                                                               data-eid="qd_F63" data-bid="1003543215"
                                                               target="_blank"><img
                                            src="img/90_016.jpg"
                                            alt="恐怖广播"></a><span></span></div>
                                </div>
                            </li>
                            <li data-rid="2">
                                <div class="num-box"><span class="num2">2</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1003306811"
                                                         data-eid="qd_F63" data-bid="1003306811"
                                                         target="_blank">放开那个女巫</a><i class="total">5984</i></div>
                            </li>
                            <li data-rid="3">
                                <div class="num-box"><span class="num3">3</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1003441527"
                                                         data-eid="qd_F63" data-bid="1003441527"
                                                         target="_blank">暴风法神</a><i class="total">1621</i></div>
                            </li>
                            <li data-rid="4">
                                <div class="num-box"><span class="num4">4</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1007994514"
                                                         data-eid="qd_F63" data-bid="1007994514"
                                                         target="_blank">巫师亚伯</a><i class="total">1556</i></div>
                            </li>
                            <li data-rid="5">
                                <div class="num-box"><span class="num5">5</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1004995908"
                                                         data-eid="qd_F63" data-bid="1004995908"
                                                         target="_blank">漫威世界的术士</a><i class="total">1449</i></div>
                            </li>
                            <li data-rid="6">
                                <div class="num-box"><span class="num6">6</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1005818830"
                                                         data-eid="qd_F63" data-bid="1005818830"
                                                         target="_blank">霜寒之翼</a><i class="total">1415</i></div>
                            </li>
                            <li data-rid="7">
                                <div class="num-box"><span class="num7">7</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/3268922"
                                                         data-eid="qd_F63" data-bid="3268922" target="_blank">巫师之旅</a><i
                                        class="total">1249</i></div>
                            </li>
                            <li data-rid="8">
                                <div class="num-box"><span class="num8">8</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1003586227"
                                                         data-eid="qd_F63" data-bid="1003586227"
                                                         target="_blank">王国血脉</a><i class="total">954</i></div>
                            </li>
                            <li data-rid="9">
                                <div class="num-box"><span class="num9">9</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1005787616"
                                                         data-eid="qd_F63" data-bid="1005787616"
                                                         target="_blank">革命吧女神</a><i class="total">897</i></div>
                            </li>
                            <li data-rid="10">
                                <div class="num-box"><span class="num10">10</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1009644207"
                                                         data-eid="qd_F63" data-bid="1009644207"
                                                         target="_blank">莽穿新世界</a><i class="total">857</i></div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="rank-list mt50" data-l1="17"><h3 class="wrap-title lang">奇幻周点击榜<a class="more"
                                                                                              href="https://www.qidian.com/rank/click?chn=1"
                                                                                              target="_blank">更多<em
                        class="iconfont"></em></a></h3>
                    <div class="book-list">
                        <ul>
                            <li class="unfold" data-rid="1">
                                <div class="book-wrap cf">
                                    <div class="book-info fl"><h3>NO.1</h3><h4><a
                                            href="https://book.qidian.com/info/1003306811" data-eid="qd_F64"
                                            data-bid="1003306811" target="_blank">放开那个女巫</a></h4>
                                        <p class="digital"><em>63632</em>点击</p>
                                        <p class="author"><a class="type"
                                                             href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                                             target="_blank">史诗奇幻</a><i>·</i><a class="writer"
                                                                                                href="https://me.qidian.com/authorIndex.aspx?id=6052114"
                                                                                                target="_blank">二目</a>
                                        </p></div>
                                    <div class="book-cover"><a class="link"
                                                               href="https://book.qidian.com/info/1003306811"
                                                               data-eid="qd_F64" data-bid="1003306811"
                                                               target="_blank"><img
                                            src="img/90_010.jpg"
                                            alt="放开那个女巫"></a><span></span></div>
                                </div>
                            </li>
                            <li data-rid="2">
                                <div class="num-box"><span class="num2">2</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1004995908"
                                                         data-eid="qd_F64" target="_blank"
                                                         data-bid="1004995908">漫威世界的术士</a><i class="total">30396</i>
                                </div>
                            </li>
                            <li data-rid="3">
                                <div class="num-box"><span class="num3">3</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1003543215"
                                                         data-eid="qd_F64" target="_blank"
                                                         data-bid="1003543215">恐怖广播</a><i class="total">26065</i></div>
                            </li>
                            <li data-rid="4">
                                <div class="num-box"><span class="num4">4</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010463961"
                                                         data-eid="qd_F64" target="_blank"
                                                         data-bid="1010463961">神魔术师</a><i class="total">25099</i></div>
                            </li>
                            <li data-rid="5">
                                <div class="num-box"><span class="num5">5</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1004952551"
                                                         data-eid="qd_F64" target="_blank"
                                                         data-bid="1004952551">邪恶后裔</a><i class="total">21871</i></div>
                            </li>
                            <li data-rid="6">
                                <div class="num-box"><span class="num6">6</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1005818830"
                                                         data-eid="qd_F64" target="_blank"
                                                         data-bid="1005818830">霜寒之翼</a><i class="total">17649</i></div>
                            </li>
                            <li data-rid="7">
                                <div class="num-box"><span class="num7">7</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010693223"
                                                         data-eid="qd_F64" target="_blank" data-bid="1010693223">美漫世界霸王轨迹</a><i
                                        class="total">15442</i></div>
                            </li>
                            <li data-rid="8">
                                <div class="num-box"><span class="num8">8</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1010032521"
                                                         data-eid="qd_F64" target="_blank"
                                                         data-bid="1010032521">巫师不朽</a><i class="total">14786</i></div>
                            </li>
                            <li data-rid="9">
                                <div class="num-box"><span class="num9">9</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1007994514"
                                                         data-eid="qd_F64" target="_blank"
                                                         data-bid="1007994514">巫师亚伯</a><i class="total">14282</i></div>
                            </li>
                            <li data-rid="10">
                                <div class="num-box"><span class="num10">10</span></div>
                                <div class="name-box"><a class="name" href="https://book.qidian.com/info/1003441527"
                                                         data-eid="qd_F64" target="_blank"
                                                         data-bid="1003441527">暴风法神</a><i class="total">13112</i></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="topics-list mb40 cf" data-l1="12">
            <ul>
                <li data-l2="1"><a href="http://book.qidian.com/info/1005835931" data-eid="qd_F50" target="_blank"><img
                        class="lazy"
                        data-original="//qidian.qpic.cn/qidian_common/349573/0ad5ef6178316483528f2331dddb7dee/0"
                        src="data:image/gif;base64,R0lGODlhCgAKAIAAAP///wAAACH5BAEAAAAALAAAAAAKAAoAAAIIhI+py+0PYysAOw=="><span
                        class="op-tag"></span></a></li>
                <li data-l2="2"><a href="http://book.qidian.com/info/1003306811" data-eid="qd_F50" target="_blank"><img
                        class="lazy"
                        data-original="//qidian.qpic.cn/qidian_common/349573/73f09be32270a1d5d582c0db41c8d64e/0"
                        src="data:image/gif;base64,R0lGODlhCgAKAIAAAP///wAAACH5BAEAAAAALAAAAAAKAAoAAAIIhI+py+0PYysAOw=="><span
                        class="op-tag"></span></a></li>
                <li data-l2="3"><a href="https://www.qidian.com/news/detail/336152310" data-eid="qd_F50"
                                   target="_blank"><img class="lazy"
                                                        data-original="//qidian.qpic.cn/qidian_common/349573/b12c855dc4f3684db3df34cfd17d199c/0"
                                                        src="data:image/gif;base64,R0lGODlhCgAKAIAAAP///wAAACH5BAEAAAAALAAAAAAKAAoAAAIIhI+py+0PYysAOw=="><span
                        class="op-tag"></span></a></li>
            </ul>
        </div>
        <div class="update-wrap mb40 cf">
            <div class="update-rec-wrap fl" data-l1="13"><h3 class="wrap-title lang">最近更新<span>24小时内更新1069本</span></h3>
                <div class="update-rec-list" data-l2="1">
                    <ul>
                        <li data-rid="1">
                            <div class="book-wrap cf">
                                <div class="book-info fr"><h4><a href="https://book.qidian.com/info/1009309660"
                                                                 data-eid="qd_F52" data-bid="1009309660"
                                                                 target="_blank">北地巫师</a></h4>
                                    <p class="digital"><span>日更1千+</span><i>·</i><span>8.2分</span></p>
                                    <p class="author"><a class="writer"
                                                         href="https://me.qidian.com/authorIndex.aspx?id=11978802"
                                                         data-eid="qd_F53" target="_blank">盍簪</a></p></div>
                                <div class="book-cover"><a class="link" href="https://book.qidian.com/info/1009309660"
                                                           data-eid="qd_F51" data-bid="1009309660" target="_blank"><img
                                        src="img/90_003.jpg"
                                        alt="北地巫师"></a><span></span></div>
                            </div>
                            <p class="intro">一个重生在异界，过着随波逐流，慢慢融入到周围环境中的故事。</p>
                            <p><a class="blue" href="https://book.qidian.com/info/1009309660" data-bid="1009309660"
                                  data-eid="qd_F54" target="_blank">书籍详情<em class="iconfont"></em></a></p></li>
                        <li data-rid="2">
                            <div class="book-wrap cf">
                                <div class="book-info fr"><h4><a href="https://book.qidian.com/info/1009845193"
                                                                 data-eid="qd_F52" data-bid="1009845193"
                                                                 target="_blank">英雄无敌新秩序</a></h4>
                                    <p class="digital"><span>日更3千+</span></p>
                                    <p class="author"><a class="writer"
                                                         href="https://me.qidian.com/authorIndex.aspx?id=5825449"
                                                         data-eid="qd_F53" target="_blank">糯笔</a></p></div>
                                <div class="book-cover"><a class="link" href="https://book.qidian.com/info/1009845193"
                                                           data-eid="qd_F51" data-bid="1009845193" target="_blank"><img
                                        src="img/90_009.jpg"
                                        alt="英雄无敌新秩序"></a><span></span></div>
                            </div>
                            <p class="intro">带着魔兽争霸系统降临英雄无敌世界，一切皆有可能</p>
                            <p><a class="blue" href="https://book.qidian.com/info/1009845193" data-bid="1009845193"
                                  data-eid="qd_F54" target="_blank">书籍详情<em class="iconfont"></em></a></p></li>
                    </ul>
                </div>
            </div>
            <div class="update-list-wrap fl" data-l1="13">
                <div class="update-tab cf" data-l2="2"><a class="blue" href="https://www.qidian.com/all?chanId=1"
                                                          target="_blank" data-eid="qd_F58">更多<em
                        class="iconfont"></em></a><span class="blue">|</span>
                    <p id="update-tab"><a class="act" href="javascript:" data-eid="qd_F55">全部</a><span>·</span><a
                            href="javascript:" data-eid="qd_F56">免费</a><span>·</span><a href="javascript:"
                                                                                        data-eid="qd_F57">VIP</a></p>
                </div>
                <div id="update-list" class="update-list" data-l2="2">
                    <div class="update-table all">
                        <table>
                            <colgroup>
                                <col width="80px">
                                <col width="150px">
                                <col width="230px">
                                <col width="100px">
                                <col width="70px">
                            </colgroup>
                            <tbody>
                            <tr data-rid="1">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=20093"
                                       data-eid="qd_F59" target="_blank"><em>「</em>另类幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010233738" data-eid="qd_F60"
                                       data-bid="1010233738" target="_blank">龙的机修工</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1010233738/391676569"
                                       data-eid="qd_F61" data-bid="1010233738"
                                       data-cid="//vipreader.qidian.com/chapter/1010233738/391676569" target="_blank">第166章再次回头</a><span
                                        class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=2853751"
                                                      data-eid="qd_F62" target="_blank">芥子客</a></td>
                                <td class="respon"><i>11-28 19:13</i></td>
                            </tr>
                            <tr data-rid="2">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       data-eid="qd_F59" target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010830329" data-eid="qd_F60"
                                       data-bid="1010830329" target="_blank">魔法大陆的光明剑</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/Jhloe0i6BWkKgXB091LLaA2/tlKWHpFYKNjM5j8_3RRvhw2"
                                       data-eid="qd_F61" data-bid="1010830329"
                                       data-cid="//read.qidian.com/chapter/Jhloe0i6BWkKgXB091LLaA2/tlKWHpFYKNjM5j8_3RRvhw2"
                                       target="_blank">第二十三章人猿现身</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=11166650"
                                                      data-eid="qd_F62" target="_blank">夜莺啼</a></td>
                                <td class="respon"><i>11-28 19:12</i></td>
                            </tr>
                            <tr data-rid="3">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       data-eid="qd_F59" target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010732986" data-eid="qd_F60"
                                       data-bid="1010732986" target="_blank">异界大学生活好</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/dhVHxRIkiGw3v1oFI-DX8Q2/jqXlNBb6H2KaGfXRMrUjdw2"
                                       data-eid="qd_F61" data-bid="1010732986"
                                       data-cid="//read.qidian.com/chapter/dhVHxRIkiGw3v1oFI-DX8Q2/jqXlNBb6H2KaGfXRMrUjdw2"
                                       target="_blank">异世界在食物这方面应该被完爆才对吧？</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401186562"
                                                      data-eid="qd_F62" target="_blank">银铠砌龙鳞</a></td>
                                <td class="respon"><i>11-28 19:11</i></td>
                            </tr>
                            <tr data-rid="4">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       data-eid="qd_F59" target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010804509" data-eid="qd_F60"
                                       data-bid="1010804509" target="_blank">恩泽与纷争</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/s1Q-Escdq76PmF5bjWOanw2/baztODa2O4X4p8iEw--PPw2"
                                       data-eid="qd_F61" data-bid="1010804509"
                                       data-cid="//read.qidian.com/chapter/s1Q-Escdq76PmF5bjWOanw2/baztODa2O4X4p8iEw--PPw2"
                                       target="_blank">第三十章假婚还是真婚（二）</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400460013"
                                                      data-eid="qd_F62" target="_blank">鱼以渔</a></td>
                                <td class="respon"><i>11-28 19:08</i></td>
                            </tr>
                            <tr data-rid="5">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       data-eid="qd_F59" target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010825544" data-eid="qd_F60"
                                       data-bid="1010825544" target="_blank">虚图</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/cQ_qgVwtEsidkflPPo43eA2/baztODa2O4VMs5iq0oQwLQ2"
                                       data-eid="qd_F61" data-bid="1010825544"
                                       data-cid="//read.qidian.com/chapter/cQ_qgVwtEsidkflPPo43eA2/baztODa2O4VMs5iq0oQwLQ2"
                                       target="_blank">第二十四章</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401304491"
                                                      data-eid="qd_F62" target="_blank">生生派</a></td>
                                <td class="respon"><i>11-28 19:08</i></td>
                            </tr>
                            <tr data-rid="6">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       data-eid="qd_F59" target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010520204" data-eid="qd_F60"
                                       data-bid="1010520204" target="_blank">魔炎之皇</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1010520204/391660683"
                                       data-eid="qd_F61" data-bid="1010520204"
                                       data-cid="//vipreader.qidian.com/chapter/1010520204/391660683" target="_blank">第一百五十三章陨落的英雄</a><span
                                        class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400910648"
                                                      data-eid="qd_F62" target="_blank">阴间人</a></td>
                                <td class="respon"><i>11-28 19:07</i></td>
                            </tr>
                            <tr data-rid="7">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       data-eid="qd_F59" target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010892691" data-eid="qd_F60"
                                       data-bid="1010892691" target="_blank">异世冒险日记</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/m5dUzC2TjcE1nwKwH2GONg2/jaNViVxFbsNMs5iq0oQwLQ2"
                                       data-eid="qd_F61" data-bid="1010892691"
                                       data-cid="//read.qidian.com/chapter/m5dUzC2TjcE1nwKwH2GONg2/jaNViVxFbsNMs5iq0oQwLQ2"
                                       target="_blank">本书宣告太监</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401386903"
                                                      data-eid="qd_F62" target="_blank">那萨尔</a></td>
                                <td class="respon"><i>11-28 19:06</i></td>
                            </tr>
                            <tr data-rid="8">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       data-eid="qd_F59" target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010926516" data-eid="qd_F60"
                                       data-bid="1010926516" target="_blank">诸神的咏叹调</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/lOvoNxqTQbPnFF_K_BxgEA2/Vvc-kZFbVdb6ItTi_ILQ7A2"
                                       data-eid="qd_F61" data-bid="1010926516"
                                       data-cid="//read.qidian.com/chapter/lOvoNxqTQbPnFF_K_BxgEA2/Vvc-kZFbVdb6ItTi_ILQ7A2"
                                       target="_blank">第七章问题学生特别多</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400218775"
                                                      data-eid="qd_F62" target="_blank">砂砚</a></td>
                                <td class="respon"><i>11-28 19:06</i></td>
                            </tr>
                            <tr data-rid="9">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=20093"
                                       data-eid="qd_F59" target="_blank"><em>「</em>另类幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010856422" data-eid="qd_F60"
                                       data-bid="1010856422" target="_blank">界灵人龙麒碧</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/x1T2M2L9I1qOW3sAcdHKOw2/4b118o95gcSaGfXRMrUjdw2"
                                       data-eid="qd_F61" data-bid="1010856422"
                                       data-cid="//read.qidian.com/chapter/x1T2M2L9I1qOW3sAcdHKOw2/4b118o95gcSaGfXRMrUjdw2"
                                       target="_blank">第三章天上的星星亮血光</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401343828"
                                                      data-eid="qd_F62" target="_blank">挥手浩然心</a></td>
                                <td class="respon"><i>11-28 19:03</i></td>
                            </tr>
                            <tr data-rid="10">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       data-eid="qd_F59" target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010700899" data-eid="qd_F60"
                                       data-bid="1010700899" target="_blank">八重记忆</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/rpZuw1nYArPjwjPmxXY4LA2/SVs71871p4GaGfXRMrUjdw2"
                                       data-eid="qd_F61" data-bid="1010700899"
                                       data-cid="//read.qidian.com/chapter/rpZuw1nYArPjwjPmxXY4LA2/SVs71871p4GaGfXRMrUjdw2"
                                       target="_blank">记忆，第四重1</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401161163"
                                                      data-eid="qd_F62" target="_blank">柏木霞</a></td>
                                <td class="respon"><i>11-28 19:03</i></td>
                            </tr>
                            <tr data-rid="11">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=20093"
                                       data-eid="qd_F59" target="_blank"><em>「</em>另类幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010142701" data-eid="qd_F60"
                                       data-bid="1010142701" target="_blank">乱世武僧</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/7sjjIykcS1jGE38c1ph2Hw2/y_WacTA0qBtp4rPq4Fd4KQ2"
                                       data-eid="qd_F61" data-bid="1010142701"
                                       data-cid="//read.qidian.com/chapter/7sjjIykcS1jGE38c1ph2Hw2/y_WacTA0qBtp4rPq4Fd4KQ2"
                                       target="_blank">第一百六十一章苏醒</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400536302"
                                                      data-eid="qd_F62" target="_blank">空天云</a></td>
                                <td class="respon"><i>11-28 19:02</i></td>
                            </tr>
                            <tr data-rid="12">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       data-eid="qd_F59" target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009975612" data-eid="qd_F60"
                                       data-bid="1009975612" target="_blank">锡林的战法师</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1009975612/391682585"
                                       data-eid="qd_F61" data-bid="1009975612"
                                       data-cid="//vipreader.qidian.com/chapter/1009975612/391682585" target="_blank">第十九章试炼与认可</a><span
                                        class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400355691"
                                                      data-eid="qd_F62" target="_blank">章仇楚</a></td>
                                <td class="respon"><i>11-28 19:02</i></td>
                            </tr>
                            <tr data-rid="13">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=202"
                                       data-eid="qd_F59" target="_blank"><em>「</em>黑暗幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010454141" data-eid="qd_F60"
                                       data-bid="1010454141" target="_blank">蒸汽朋克下的神秘世界</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1010454141/391645635"
                                       data-eid="qd_F61" data-bid="1010454141"
                                       data-cid="//vipreader.qidian.com/chapter/1010454141/391645635" target="_blank">第九十六章神秘的荒地</a><span
                                        class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=4393305"
                                                      data-eid="qd_F62" target="_blank">九城君</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            <tr data-rid="14">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       data-eid="qd_F59" target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009695191" data-eid="qd_F60"
                                       data-bid="1009695191" target="_blank">我的AR女神</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1009695191/391529946"
                                       data-eid="qd_F61" data-bid="1009695191"
                                       data-cid="//vipreader.qidian.com/chapter/1009695191/391529946" target="_blank">第341章吃相</a><span
                                        class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400065336"
                                                      data-eid="qd_F62" target="_blank">鱼与喵神</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            <tr data-rid="15">
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       data-eid="qd_F59" target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010781675" data-eid="qd_F60"
                                       data-bid="1010781675" target="_blank">帝国破晓</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/WBdv15BhIonH0qbqCO3QNg2/5bVPFOtdBT6aGfXRMrUjdw2"
                                       data-eid="qd_F61" data-bid="1010781675"
                                       data-cid="//read.qidian.com/chapter/WBdv15BhIonH0qbqCO3QNg2/5bVPFOtdBT6aGfXRMrUjdw2"
                                       target="_blank">054势均力敌？</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401250553"
                                                      data-eid="qd_F62" target="_blank">意测</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="update-table free hidden">
                        <table width="100%">
                            <colgroup>
                                <col width="80px">
                                <col width="150px">
                                <col width="230px">
                                <col width="100px">
                                <col width="70px">
                            </colgroup>
                            <tbody>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010830329" target="_blank"
                                       data-bid="1010830329">魔法大陆的光明剑</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/Jhloe0i6BWkKgXB091LLaA2/tlKWHpFYKNjM5j8_3RRvhw2"
                                       data-bid="1010830329"
                                       data-cid="//read.qidian.com/chapter/Jhloe0i6BWkKgXB091LLaA2/tlKWHpFYKNjM5j8_3RRvhw2"
                                       target="_blank">第二十三章人猿现身</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=11166650"
                                                      target="_blank">夜莺啼</a></td>
                                <td class="respon"><i>11-28 19:12</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010732986" target="_blank"
                                       data-bid="1010732986">异界大学生活好</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/dhVHxRIkiGw3v1oFI-DX8Q2/jqXlNBb6H2KaGfXRMrUjdw2"
                                       data-bid="1010732986"
                                       data-cid="//read.qidian.com/chapter/dhVHxRIkiGw3v1oFI-DX8Q2/jqXlNBb6H2KaGfXRMrUjdw2"
                                       target="_blank">异世界在食物这方面应该被完爆才对吧？</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401186562"
                                                      target="_blank">银铠砌龙鳞</a></td>
                                <td class="respon"><i>11-28 19:11</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010804509" target="_blank"
                                       data-bid="1010804509">恩泽与纷争</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/s1Q-Escdq76PmF5bjWOanw2/baztODa2O4X4p8iEw--PPw2"
                                       data-bid="1010804509"
                                       data-cid="//read.qidian.com/chapter/s1Q-Escdq76PmF5bjWOanw2/baztODa2O4X4p8iEw--PPw2"
                                       target="_blank">第三十章假婚还是真婚（二）</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400460013"
                                                      target="_blank">鱼以渔</a></td>
                                <td class="respon"><i>11-28 19:08</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010825544" target="_blank"
                                       data-bid="1010825544">虚图</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/cQ_qgVwtEsidkflPPo43eA2/baztODa2O4VMs5iq0oQwLQ2"
                                       data-bid="1010825544"
                                       data-cid="//read.qidian.com/chapter/cQ_qgVwtEsidkflPPo43eA2/baztODa2O4VMs5iq0oQwLQ2"
                                       target="_blank">第二十四章</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401304491"
                                                      target="_blank">生生派</a></td>
                                <td class="respon"><i>11-28 19:08</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010892691" target="_blank"
                                       data-bid="1010892691">异世冒险日记</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/m5dUzC2TjcE1nwKwH2GONg2/jaNViVxFbsNMs5iq0oQwLQ2"
                                       data-bid="1010892691"
                                       data-cid="//read.qidian.com/chapter/m5dUzC2TjcE1nwKwH2GONg2/jaNViVxFbsNMs5iq0oQwLQ2"
                                       target="_blank">本书宣告太监</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401386903"
                                                      target="_blank">那萨尔</a></td>
                                <td class="respon"><i>11-28 19:06</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010926516" target="_blank"
                                       data-bid="1010926516">诸神的咏叹调</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/lOvoNxqTQbPnFF_K_BxgEA2/Vvc-kZFbVdb6ItTi_ILQ7A2"
                                       data-bid="1010926516"
                                       data-cid="//read.qidian.com/chapter/lOvoNxqTQbPnFF_K_BxgEA2/Vvc-kZFbVdb6ItTi_ILQ7A2"
                                       target="_blank">第七章问题学生特别多</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400218775"
                                                      target="_blank">砂砚</a></td>
                                <td class="respon"><i>11-28 19:06</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=20093"
                                       target="_blank"><em>「</em>另类幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010856422" target="_blank"
                                       data-bid="1010856422">界灵人龙麒碧</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/x1T2M2L9I1qOW3sAcdHKOw2/4b118o95gcSaGfXRMrUjdw2"
                                       data-bid="1010856422"
                                       data-cid="//read.qidian.com/chapter/x1T2M2L9I1qOW3sAcdHKOw2/4b118o95gcSaGfXRMrUjdw2"
                                       target="_blank">第三章天上的星星亮血光</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401343828"
                                                      target="_blank">挥手浩然心</a></td>
                                <td class="respon"><i>11-28 19:03</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010700899" target="_blank"
                                       data-bid="1010700899">八重记忆</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/rpZuw1nYArPjwjPmxXY4LA2/SVs71871p4GaGfXRMrUjdw2"
                                       data-bid="1010700899"
                                       data-cid="//read.qidian.com/chapter/rpZuw1nYArPjwjPmxXY4LA2/SVs71871p4GaGfXRMrUjdw2"
                                       target="_blank">记忆，第四重1</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401161163"
                                                      target="_blank">柏木霞</a></td>
                                <td class="respon"><i>11-28 19:03</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=20093"
                                       target="_blank"><em>「</em>另类幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010142701" target="_blank"
                                       data-bid="1010142701">乱世武僧</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/7sjjIykcS1jGE38c1ph2Hw2/y_WacTA0qBtp4rPq4Fd4KQ2"
                                       data-bid="1010142701"
                                       data-cid="//read.qidian.com/chapter/7sjjIykcS1jGE38c1ph2Hw2/y_WacTA0qBtp4rPq4Fd4KQ2"
                                       target="_blank">第一百六十一章苏醒</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400536302"
                                                      target="_blank">空天云</a></td>
                                <td class="respon"><i>11-28 19:02</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010781675" target="_blank"
                                       data-bid="1010781675">帝国破晓</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/WBdv15BhIonH0qbqCO3QNg2/5bVPFOtdBT6aGfXRMrUjdw2"
                                       data-bid="1010781675"
                                       data-cid="//read.qidian.com/chapter/WBdv15BhIonH0qbqCO3QNg2/5bVPFOtdBT6aGfXRMrUjdw2"
                                       target="_blank">054势均力敌？</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401250553"
                                                      target="_blank">意测</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009873698" target="_blank"
                                       data-bid="1009873698">元法传说</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/2CKQa9N7RzsAFWAflvxzYg2/TiSkrxANQeDgn4SMoDUcDQ2"
                                       data-bid="1009873698"
                                       data-cid="//read.qidian.com/chapter/2CKQa9N7RzsAFWAflvxzYg2/TiSkrxANQeDgn4SMoDUcDQ2"
                                       target="_blank">第七章两雄相争</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400240660"
                                                      target="_blank">一品街侯</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=20093"
                                       target="_blank"><em>「</em>另类幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009945436" target="_blank"
                                       data-bid="1009945436">最终武器之女神召唤</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/yaflE7J8U_tH9vdK3C5yvw2/uB77GruZx_KaGfXRMrUjdw2"
                                       data-bid="1009945436"
                                       data-cid="//read.qidian.com/chapter/yaflE7J8U_tH9vdK3C5yvw2/uB77GruZx_KaGfXRMrUjdw2"
                                       target="_blank">第180章召唤师？</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=12312156"
                                                      target="_blank">都杰德</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009636936" target="_blank"
                                       data-bid="1009636936">异人异界异闻录</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/yBL9uEz-YypH9vdK3C5yvw2/k6G3pKS2olVOBDFlr9quQA2"
                                       data-bid="1009636936"
                                       data-cid="//read.qidian.com/chapter/yBL9uEz-YypH9vdK3C5yvw2/k6G3pKS2olVOBDFlr9quQA2"
                                       target="_blank">第七十八章森林之王</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400132390"
                                                      target="_blank">夜升</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1007069990" target="_blank"
                                       data-bid="1007069990">尘冥链</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/27vQ37G2r2BREKyOHuaidQ2/sIY8bzCWzsjM5j8_3RRvhw2"
                                       data-bid="1007069990"
                                       data-cid="//read.qidian.com/chapter/27vQ37G2r2BREKyOHuaidQ2/sIY8bzCWzsjM5j8_3RRvhw2"
                                       target="_blank">第三十九章收徒大典（二）</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=10865159"
                                                      target="_blank">安颜子</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010908610" target="_blank"
                                       data-bid="1010908610">妖道凌虚子</a></td>
                                <td><a class="section"
                                       href="https://read.qidian.com/chapter/s9gUTRnu6m3xq9ZHzk0vMw2/40Q47KlgYQzwrjbX3WA1AA2"
                                       data-bid="1010908610"
                                       data-cid="//read.qidian.com/chapter/s9gUTRnu6m3xq9ZHzk0vMw2/40Q47KlgYQzwrjbX3WA1AA2"
                                       target="_blank">第四章蛮斗士</a></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=401366239"
                                                      target="_blank">猫头枭</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="update-table vip hidden">
                        <table width="100%">
                            <colgroup>
                                <col width="80px">
                                <col width="150px">
                                <col width="230px">
                                <col width="100px">
                                <col width="70px">
                            </colgroup>
                            <tbody>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=20093"
                                       target="_blank"><em>「</em>另类幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010233738" target="_blank"
                                       data-bid="1010233738">龙的机修工</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1010233738/391676569"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1010233738/391676569"
                                       data-bid="1010233738">第166章再次回头</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=2853751"
                                                      target="_blank">芥子客</a></td>
                                <td class="respon"><i>11-28 19:13</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010520204" target="_blank"
                                       data-bid="1010520204">魔炎之皇</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1010520204/391660683"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1010520204/391660683"
                                       data-bid="1010520204">第一百五十三章陨落的英雄</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400910648"
                                                      target="_blank">阴间人</a></td>
                                <td class="respon"><i>11-28 19:07</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009975612" target="_blank"
                                       data-bid="1009975612">锡林的战法师</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1009975612/391682585"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1009975612/391682585"
                                       data-bid="1009975612">第十九章试炼与认可</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400355691"
                                                      target="_blank">章仇楚</a></td>
                                <td class="respon"><i>11-28 19:02</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=202"
                                       target="_blank"><em>「</em>黑暗幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010454141" target="_blank"
                                       data-bid="1010454141">蒸汽朋克下的神秘世界</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1010454141/391645635"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1010454141/391645635"
                                       data-bid="1010454141">第九十六章神秘的荒地</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=4393305"
                                                      target="_blank">九城君</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009695191" target="_blank"
                                       data-bid="1009695191">我的AR女神</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1009695191/391529946"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1009695191/391529946"
                                       data-bid="1009695191">第341章吃相</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400065336"
                                                      target="_blank">鱼与喵神</a></td>
                                <td class="respon"><i>11-28 19:00</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010491194" target="_blank"
                                       data-bid="1010491194">魔法门</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1010491194/391687756"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1010491194/391687756"
                                       data-bid="1010491194">第一百七十八章神器·魔幻彩虹</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400892722"
                                                      target="_blank">侬哥</a></td>
                                <td class="respon"><i>11-28 18:59</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010264382" target="_blank"
                                       data-bid="1010264382">巫师的旅途</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1010264382/391687452"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1010264382/391687452"
                                       data-bid="1010264382">117：我罩的！</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=11816091"
                                                      target="_blank">好大的白兔</a></td>
                                <td class="respon"><i>11-28 18:54</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009370661" target="_blank"
                                       data-bid="1009370661">永恒废墟</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1009370661/391680093"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1009370661/391680093"
                                       data-bid="1009370661">第四百二十八章天黑好杀人</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=11216160"
                                                      target="_blank">西凉未远</a></td>
                                <td class="respon"><i>11-28 18:39</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=20093"
                                       target="_blank"><em>「</em>另类幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1006632572" target="_blank"
                                       data-bid="1006632572">穿越异界之农场</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1006632572/391626512"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1006632572/391626512"
                                       data-bid="1006632572">第二百四十八章分派礼物</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=11232321"
                                                      target="_blank">宅女闲言</a></td>
                                <td class="respon"><i>11-28 18:36</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=38"
                                       target="_blank"><em>「</em>现代魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1005016554" target="_blank"
                                       data-bid="1005016554">HP魔法传记</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1005016554/391670018"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1005016554/391670018"
                                       data-bid="1005016554">第六百四十九章韦斯莱一家的到来</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=5122846"
                                                      target="_blank">洛河落何</a></td>
                                <td class="respon"><i>11-28 18:30</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009970443" target="_blank"
                                       data-bid="1009970443">在奇幻世界成祖神</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1009970443/391433517"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1009970443/391433517"
                                       data-bid="1009970443">第三百二十八章安娜的商品</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=7439919"
                                                      target="_blank">不癫真人</a></td>
                                <td class="respon"><i>11-28 18:30</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=62"
                                       target="_blank"><em>「</em>剑与魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/3340332" target="_blank"
                                       data-bid="3340332">异界之英雄联盟商场</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/3340332/391685819"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/3340332/391685819"
                                       data-bid="3340332">第七百一十六章被坑了！</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=4211481"
                                                      target="_blank">时人雨</a></td>
                                <td class="respon"><i>11-28 18:23</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=202"
                                       target="_blank"><em>「</em>黑暗幻想<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1004859911" target="_blank"
                                       data-bid="1004859911">恶魔直播间</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1004859911/391685493"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1004859911/391685493"
                                       data-bid="1004859911">第六百九十一章炼制一座城</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=9285476"
                                                      target="_blank">潇湘夫子</a></td>
                                <td class="respon"><i>11-28 18:17</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=201"
                                       target="_blank"><em>「</em>史诗奇幻<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1010153563" target="_blank"
                                       data-bid="1010153563">神的游戏之我是星球的远大意志</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1010153563/391685402"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1010153563/391685402"
                                       data-bid="1010153563">第一百七十一章：星起苏拉西（八）</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=10021416"
                                                      target="_blank">虚无行者北冥</a></td>
                                <td class="respon"><i>11-28 18:16</i></td>
                            </tr>
                            <tr>
                                <td><a class="classify" href="https://www.qidian.com/all?chanId=1&amp;subCateId=38"
                                       target="_blank"><em>「</em>现代魔法<em>」</em></a></td>
                                <td><a class="name" href="https://book.qidian.com/info/1009918765" target="_blank"
                                       data-bid="1009918765">末世夺神</a></td>
                                <td><a class="section" href="https://vipreader.qidian.com/chapter/1009918765/391404655"
                                       target="_blank" data-cid="//vipreader.qidian.com/chapter/1009918765/391404655"
                                       data-bid="1009918765">二百七十地球往事（转）</a><span class="vip"></span></td>
                                <td class="respon"><a class="author"
                                                      href="https://me.qidian.com/authorIndex.aspx?id=400290291"
                                                      target="_blank">月下发炎</a></td>
                                <td class="respon"><i>11-28 18:15</i></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="update-fin-wrap fr" data-l1="18"><h3 class="wrap-title lang">完本精品</h3>
                <div class="update-fin-list">
                    <ul>
                        <li data-rid="1">
                            <div class="book-img"><a href="https://book.qidian.com/info/1017141" data-eid="qd_F65"
                                                     data-bid="1017141" target="_blank"><img class="lazy"
                                                                                             src="img/default_book.png"
                                                                                             data-original="//qidian.qpic.cn/qdbimg/349573/1017141/90"
                                                                                             alt="盘龙"></a></div>
                            <div class="book-info"><p><span>剑与魔法</span><i>334万字</i></p>
                                <h3><a href="https://book.qidian.com/info/1017141" data-eid="qd_F66" data-bid="1017141"
                                       target="_blank">盘龙</a></h3>
                                <p>有盘龙戒指的少年的梦幻旅程</p></div>
                        </li>
                        <li data-rid="2">
                            <div class="book-img"><a href="https://book.qidian.com/info/3456256" data-eid="qd_F65"
                                                     data-bid="3456256" target="_blank"><img class="lazy"
                                                                                             src="img/default_book.png"
                                                                                             data-original="//qidian.qpic.cn/qdbimg/349573/3456256/90"
                                                                                             alt="巫界术士"></a></div>
                            <div class="book-info"><p><span>剑与魔法</span><i>357万字</i></p>
                                <h3><a href="https://book.qidian.com/info/3456256" data-eid="qd_F66" data-bid="3456256"
                                       target="_blank">巫界术士</a></h3>
                                <p>获术士的传承，走上血脉之路</p></div>
                        </li>
                        <li data-rid="3">
                            <div class="book-img"><a href="https://book.qidian.com/info/1004961404" data-eid="qd_F65"
                                                     data-bid="1004961404" target="_blank"><img class="lazy"
                                                                                                src="img/default_book.png"
                                                                                                data-original="//qidian.qpic.cn/qdbimg/349573/1004961404/90"
                                                                                                alt="泰坦黎明"></a></div>
                            <div class="book-info"><p><span>史诗奇幻</span><i>134万字</i></p>
                                <h3><a href="https://book.qidian.com/info/1004961404" data-eid="qd_F66"
                                       data-bid="1004961404" target="_blank">泰坦黎明</a></h3>
                                <p>重生成为了一名泰坦神灵</p></div>
                        </li>
                        <li data-rid="4">
                            <div class="book-img"><a href="https://book.qidian.com/info/3268922" data-eid="qd_F65"
                                                     data-bid="3268922" target="_blank"><img class="lazy"
                                                                                             src="img/default_book.png"
                                                                                             data-original="//qidian.qpic.cn/qdbimg/349573/3268922/90"
                                                                                             alt="巫师之旅"></a></div>
                            <div class="book-info"><p><span>剑与魔法</span><i>517万字</i></p>
                                <h3><a href="https://book.qidian.com/info/3268922" data-eid="qd_F66" data-bid="3268922"
                                       target="_blank">巫师之旅</a></h3>
                                <p>格林巫师传奇之旅！</p></div>
                        </li>
                        <li data-rid="5">
                            <div class="book-img"><a href="https://book.qidian.com/info/1005236077" data-eid="qd_F65"
                                                     data-bid="1005236077" target="_blank"><img class="lazy"
                                                                                                src="img/default_book.png"
                                                                                                data-original="//qidian.qpic.cn/qdbimg/349573/1005236077/90"
                                                                                                alt="艾泽拉斯圣光轨迹"></a>
                            </div>
                            <div class="book-info"><p><span>剑与魔法</span><i>281万字</i></p>
                                <h3><a href="https://book.qidian.com/info/1005236077" data-eid="qd_F66"
                                       data-bid="1005236077" target="_blank">艾泽拉斯圣光轨迹</a></h3>
                                <p>狄克狼狈地来到艾泽拉斯</p></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="box-center cf">
            <div class="friend-link"><em><a class="yuewen" href="https://www.yuewen.com/" target="_blank">阅文集团</a><cite>旗下网站：</cite></em><a
                    href="https://www.qidian.com/">起点中文网</a><a href="https://www.qdmm.com/" target="_blank">起点女生网</a><a
                    href="http://chuangshi.qq.com/" target="_blank">创世中文网</a><a href="http://yunqi.qq.com/"
                                                                                target="_blank">云起书院</a>
                <!--<a href="http://www.rongshuxia.com" target="_blank">榕树下</a>--><a href="https://www.hongxiu.com/"
                                                                                     target="_blank">红袖添香</a><a
                        href="https://www.readnovel.com/" target="_blank">小说阅读网</a><a href="https://www.xs8.cn/"
                                                                                      target="_blank">言情小说吧</a><a
                        href="http://www.xxsy.net/" target="_blank">潇湘书院</a><a href="http://www.tingbook.com/"
                                                                               target="_blank">天方听书网</a><a
                        href="http://www.lrts.me/" target="_blank">懒人听书</a><a href="http://yuedu.yuewen.com/"
                                                                              target="_blank">阅文悦读</a><a
                        href="https://www.yuewen.com/app.html#appqq" target="_blank">QQ阅读</a><a
                        href="https://www.yuewen.com/app.html#appqd" target="_blank">起点读书</a><a
                        href="https://www.yuewen.com/app.html#appzj" target="_blank">作家助手</a><a
                        href="https://www.webnovel.com/" target="_blank" title="Qidian International">起点国际版</a></div>
            <div class="footer-menu dib-wrap"><a href="https://www.qidian.com/about/intro" target="_blank">关于起点</a><a
                    href="https://www.qidian.com/about/contact" target="_blank">联系我们</a><a
                    href="https://join.yuewen.com/" target="_blank">加入我们</a><a
                    href="https://www.qidian.com/help/index/2" target="_blank">帮助中心</a><a
                    href="http://123.206.70.240/online/?cid=0&amp;uid=10&amp;code=0" class="advice"
                    target="_blank">提交建议</a><a href="http://bbs.qidian.com/" target="_blank">起点论坛</a><a
                    href="http://comic.qidian.com/" target="_blank">动漫频道</a><a href="https://jubao.yuewen.com/"
                                                                               target="_blank">举报中心</a></div>
            <div class="copy-right"><p><span>Copyright © 2002-2017 www.qidian.com All Rights Reserved</span>版权所有
                上海玄霆娱乐信息科技有限公司</p>
                <p>上海玄霆娱乐信息科技有限公司 增值电信业务经营许可证沪B2-20080046 沪网文[2015]0081-031 新出网证（沪）字010 沪ICP备08017520号-1</p>
                <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！举报电话：010-59357051</p>
                <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
                <p>联系方式 总机 021-61870500 地址：中国（上海）自由贸易试验区碧波路690号6号楼101、201室</p></div>
        </div>
    </div>
</div>
<script>//
全局的通用数据都放g_data变量里h
var g_data = {};
// 环境变量，会按照环境选择性打log
g_data.envType = 'pro';
// 用作统计PV
g_data.pageId = 'qd_P_qihuan';
// 随机广告
g_data.adBanner = {

    adRightBottom: [{
        "title": "", "adImgUrl": "//qidian.qpic.cn/qidian_common
        / 349573 / ded685c97bfba934be4593d0fb066aa3 / 0","adCategoryName":"广
        告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/sgqxz/way/1?qd_game_key=sgqxz216x100&qd_dd_p1=607"}],


        adBanner1
:
[{
    "title": "", "adImgUrl": "//qidian.qpic.cn/qidian_common/349573
    / 3f475d9aa5e885ae5fe4b7b630aa4467 / 0","adCategoryName":"广
    告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http
://cpgame.qd.game.qidian.com
/Home/
Index / directLogin / name / yjmxz / way / 1 ? qd_game_key = yjmxz1200x100 &
qd_dd_p1 = 804"},{"
title
":"
","
adImgUrl
":"//qidian.qpic.cn/qidian_common
/ 349573 / 907101
b6053f4a16b9d6fc346021c78e / 0
","
adCategoryName
":"
广
告
","
colorType
":0,"
type
":1,"
isAdv
":1,"
adJumpUrl
":"
http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/ssss/way/1?qd_game_key=ssss1200x100&qd_dd_p1=943"}]
    }
// 当前页面路由
g_data.domain = '//www.qidian.com/qihuan';
// 域名环境变量
g_data.domainSearch = 'www.qidian.com/search';</script>
<script data-ignore="true" src="js/LBF.js"></script>
<script>//
LBF
配置

LBF.config({
    "paths": {
        "site": "//qidian.gtimg.com/qd/js",
        "qd": "//qidian.gtimg.com/qd",
        "common": "//qidian.gtimg.com/common/1.0.0"
    }, "vars": {"theme": "//qidian.gtimg.com/qd/css"}, "combo": true, "debug": false
});

LBF.use(['lib.jQuery'], function ($) {
    window.$ = $;
});</script>
<script>LBF.use(['monitor.SpeedReport',
        'js/login.a4de6.js', 'qd/js/channel/index.438e8.js'],
    function (SpeedReport, Login, Index) {
        // 页面逻辑入口
        if (Login) {
            Login.init().always(function () {
                Index && typeof Index === 'function' && new Index();
            })
        }
        if (219 && 219 != '') {
            $(window).on('load.speedReport', function () {
                // speedTimer[onload]
                speedTimer.push(new Date().getTime());
                var f1 = 7718, // china reading limited's ID
                    f2 = 219, // site ID
                    f3 = 9; // page ID
                // chrome & IE9 Performance API
                SpeedReport.reportPerformance({
                    flag1: f1,
                    flag2: f2,
                    flag3IE: f3,
                    flag3Chrome: f3,
                    rate: 0.1,
                    url: '//isdspeed.qidian.com/cgi-bin/r.cgi'
                });
                // common speedTimer:['dom ready', 'onload']
                var speedReport = SpeedReport.create({
                    flag1: f1,
                    flag2: f2,
                    flag3: f3,
                    start: speedZero,
                    rate: 0.1,
                    url: '//isdspeed.qidian.com/cgi-bin/r.cgi'
                });
                // chrome & IE9 Performance API range 1~19, common
                speedTimer
                use
                20 +
                for (var i = 0; i < speedTimer.length; i++) {
                    speedReport.add(speedTimer[i], i + 20)
                }
                //
                http://isdspeed.qq.com/cgi-bin/r.cgi?flag1=7718&flag2=224&flag3=1&1=38&2=38&…

                    speedReport.send();
            })
        }
    });
speedTimer.push(new Date().getTime());</script>
<script>var _mtac = {};
(function () {
    var mta = document.createElement("script");
    mta.src = "//pingjs.qq.com/h5/stats.js?v2.0.2";
    mta.setAttribute("name", "MTAH5");
    mta.setAttribute("sid", "500451537");
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(mta, s);
})();</script>
<div class="lbf-autocomplete-suggestions"
     style="position: absolute; display: none; max-height: 384px; z-index: 9999;"></div>
</body>
</html>
