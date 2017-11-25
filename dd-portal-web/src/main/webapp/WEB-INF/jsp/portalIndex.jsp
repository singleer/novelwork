<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/stats.js" name="MTAH5" sid="500451537">
	
</script>
<script>
	document.domain = 'qidian.com';
</script>
<script>
	function getCookie(name) {
		var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
		if (arr = document.cookie.match(reg)) {
			return (arr[2]);
		} else {
			return null;
		}
	}
	//遇到cookie ns == 1 跳转到老版 加各域名
	if (getCookie('ns') == 1) {
		location.href = '//www.qidian.com/2009';
	}
</script>
<script>
	var speedTimer = [], speedZero = new Date().getTime();
</script>
<script>
	//遇到cookie tf=1的话留在本站，否则跳转移动站
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
		var tempcookie = name + '=' + escape(value)
				+ ((expires) ? '; expires=' + expires.toGMTString() : '')
				+ ((path) ? '; path=' + path : '')
				+ ((domain) ? '; domain=' + domain : '');
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
		img.onload = img.onerror = function() {
			img = null;
		};
		img.src = url;
	};
</script>
<link data-ignore="true" rel="shortcut icon" type="image/x-icon"
	href="https://qidian.gtimg.com/qd/favicon/qd_icon.fb0b7.ico">
<link data-ignore="true" rel="Bookmark" type="image/x-icon"
	href="https://qidian.gtimg.com/qd/favicon/qd_icon.fb0b7.ico">
<link data-ignore="true" rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" data-ignore="true"
	href="css/Autocomplete_002.css">
<link charset="utf-8" rel="stylesheet" href="css/Dropdown.css">
<link charset="utf-8" rel="stylesheet" href="css/Autocomplete.css">
<link charset="utf-8" rel="stylesheet" href="css/Popup.css">
</head>
<body class="index" data-dynamic="false" style="background-image: url()">
	<div class="share-img">
		<img src="img/share.png" width="300" height="300">
	</div>
	<div class="wrap">
		<div class="top-nav" data-l1="1">
			<div class="box-center cf">
				<div class="login-box fr">
					<div class="sign-in hidden">
						<span>你好，</span><a class="black" id="user-name"
							href="https://me.qidian.com/" target="_blank" data-eid="qd_A08"></a><em>|</em><a
							class="black" id="msg-btn"
							href="https://me.qidian.com/msg/systems.aspx?page=1"
							target="_blank" data-eid="qd_A09">消息<cite id="msg-box">(<i></i>)
						</cite></a><em>|</em><a id="exit-btn" href="javascript:" data-eid="qd_A10">退出</a>
					</div>
					<div class="sign-out">
						<a id="login-btn" class="black" href="javascript:"
							data-eid="qd_A06">登录</a><em>|</em><a id="reg-btn"
							href="https://passport.qidian.com/reg.html?appid=10&amp;areaid=1&amp;target=iframe&amp;ticket=1&amp;auto=1&amp;autotime=30&amp;returnUrl=https%3A%2F%2Fwww.qidian.com"
							target="_blank" data-eid="qd_A07">注册</a>
					</div>
				</div>
				<div class="nav-link fl">
					<a class="act" href="https://www.qidian.com/" data-eid="qd_A01">起点中文网</a><a
						href="https://www.qdmm.com/" target="_blank" data-eid="qd_A02">起点女生网</a><em>|</em><a
						href="http://chuangshi.qq.com/" target="_blank" data-eid="qd_A03">创世中文网</a><em>|</em><a
						href="http://yunqi.qq.com/" target="_blank" data-eid="qd_A04">云起书院</a><em>|</em><a
						href="javascript:" id="switchEl" data-eid="qd_A182">繁体版</a>
					<!--<em>|</em>
            <a class="black" id="back-old" href="javascript:" data-eid="qd_A05">返回旧版</a>-->
				</div>
			</div>
		</div>
		<div class="top-op-box" id="j-topOpBox">
			<!-- start 顶部随机广告 -->

			<div class="top-game-op" id="topGameOp" data-l1="34"
				style="display: block;">
				<div class="game-wrap">
					<a class="close" id="closeTopGame" href="javascript:"
						data-eid="qd_A184"><em class="iconfont"></em></a> <a
						href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/mxsj/way/1?qd_game_key=mxsj1200x60&amp;qd_dd_p1=1833"
						target="_blank" data-eid="qd_A183" data-qd_dd_p1="1"><img
						src="img/0_009.jpg"><span class="op-tag"></span></a>
				</div>
			</div>

			<!-- end 顶部随机广告 -->
		</div>
		<div class="logo-wrap box-center" data-l1="2">
			<div class="box-center cf">
				<div class="book-shelf fr">
					<a href="https://me.qidian.com/bookCase/bookCase.aspx?caseId=-2"
						target="_blank" data-eid="qd_A14" id="numero2"><em
						class="iconfont shelf"></em><i>我的书架</i></a>
				</div>
				<div class="logo fl">
					<a href="https://www.qidian.com/" data-eid="qd_A11"></a>
				</div>
				<div class="search-wrap fl">
					<form id="formUrl" action="//www.qidian.com/search" method="get"
						target="_blank">
						<p>
							<input class="search-box" id="s-box" name="kw"
								placeholder="异世界的美食家" autocomplete="off" type="text">
						</p>
						<input class="submit-input" id="searchSubmit" data-eid="qd_A13"
							type="submit"><label id="search-btn" class="search-btn"
							for="searchSubmit"><em class="iconfont" data-eid="qd_A13"></em></label>
					</form>
				</div>
			</div>
		</div>
		<div class="main-nav-wrap" data-l1="3">
			<div class="main-nav box-center cf">
				<ul>
					<li class="first"><span><em><i></i><i></i><i></i></em>作品分类</span></li>
					<li class="nav-li"><a href="https://www.qidian.com/all"
						data-eid="qd_A15">全部作品</a></li>
					<li class="nav-li"><a href="https://www.qidian.com/rank"
						data-eid="qd_A16">排行</a></li>
					<li class="nav-li"><a href="https://www.qidian.com/finish"
						data-eid="qd_A17">完本</a></li>
					<li class="nav-li"><a href="https://www.qidian.com/free"
						data-eid="qd_A18">免费</a></li>
					<li class="nav-li"><a
						href="https://write.qq.com/public/login.html" target="_blank"
						data-eid="qd_A19">作家专区</a></li>
					<li class="nav-li"><a
						href="https://www.yuewen.com/app.html#appqd" target="_blank"
						data-eid="qd_A20"><b class="iconfont client"></b>客户端</a></li>
					<li class="game phone" id="game-phone"><a class="phone-game"
						href="http://sy.qidian.com/" target="_blank" data-eid="qd_A22"><b
							class="iconfont webgame"></b>手游</a>
						<div class="game-dropdown hidden" id="phone-dropdown"
							style="display: none;">
							<cite></cite>
							<dl class="phone-list">
								<dd>
									<h3>
										<a href="" data-eid="qd_A39" target="_blank">三国如龙传</a><i>回合破局
											幻想三国</i>
									</h3>
									<p>
										<a
											href="http://collect.game.qidian.com/Home/Stat/Index?gourl=aHR0cDovL3N5LnFpZGlhbi5jb20vSG9tZS9QYy9JbmRleC9kZXRhaWwvZ2FtZWlkLzIwMDY4OQ==&amp;code=5733ed85f2cd0"
											target="_blank" data-eid="qd_A39"><img
											src="img/0_004.jpg"><i class="op-tag"></i></a>
									</p>
								</dd>
								<dd>
									<h3>
										<a href="" data-eid="qd_A40" target="_blank">武娘外传</a><i>萌妹与你携手闯天涯</i>
									</h3>
									<p>
										<a
											href="http://collect.game.qidian.com/Home/Stat/Index?gourl=aHR0cDovL3N5LnFpZGlhbi5jb20vSG9tZS9QYy9JbmRleC9kZXRhaWwvZ2FtZWlkLzIwMDY4NA==&amp;code=5733edc4a3435"
											target="_blank" data-eid="qd_A40"><img
											src="img/0_019.jpg"><i class="op-tag"></i></a>
									</p>
								</dd>
								<dd>
									<h3>
										<a href="" data-eid="qd_A41" target="_blank">三国群将传</a><i>天下名将
											尽在掌控</i>
									</h3>
									<p>
										<a
											href="http://collect.game.qidian.com/Home/Stat/Index?gourl=aHR0cDovL3N5LnFpZGlhbi5jb20vSG9tZS9QYy9JbmRleC9kZXRhaWwvZ2FtZWlkLzIwMDY4Ng==&amp;code=5769f94031529"
											target="_blank" data-eid="qd_A41"><img
											src="img/0_016.jpg"><i class="op-tag"></i></a>
									</p>
								</dd>
							</dl>
							<div class="bottom">
								<h4>新游上线|猎场</h4>
								<p>
									<a
										href="http://sy.qidian.com/Home/Pc/Index/detail/gameid/200685?qd_game_key=192x86&amp;qd_dd_p1=3416"
										data-eid="qd_A42" target="_blank"><img src="img/0_017.jpg"
										alt=""><i class="op-tag"></i></a>
								</p>
							</div>
						</div></li>
					<li class="game web" id="game-web"><a class="web-game"
						href="http://game.qidian.com/" target="_blank" data-eid="qd_A21"><b
							class="iconfont"></b>页游</a>
						<div class="game-dropdown hidden" id="web-dropdown">
							<cite></cite>
							<div class="web-game-list">
								<dl class="lately" id="lately">
									<dt>最近玩过</dt>
									<dd data-rid="1">
										<a class="name" href="javascript:" target="_blank"
											data-eid="qd_A29"></a><strong></strong><a class="link"
											href="javascript:" target="_blank" data-eid="qd_A29">GO<i>&gt;</i></a>
									</dd>
									<dd data-rid="2">
										<a class="name" href="javascript:" target="_blank"
											data-eid="qd_A30"></a><strong></strong><a class="link"
											href="javascript:" target="_blank" data-eid="qd_A30">GO<i>&gt;</i></a>
									</dd>
								</dl>
								<dl class="web-list" id="log-web-list">
									<dt>今日开服</dt>
									<dd class="act" data-rid="1">
										<h3>
											<span></span><i>11-23</i><a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=mxsj"
												data-eid="qd_A31" target="_blank">冒险世界</a><strong>9区</strong>
										</h3>
										<p>
											<a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=mxsj"
												data-eid="qd_A31" target="_blank"><img
												src="img/0_020.jpg"><i class="op-tag"></i></a>
										</p>
									</dd>
									<dd data-rid="2">
										<h3>
											<span></span><i>11-23</i><a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=gs"
												data-eid="qd_A32" target="_blank">攻沙</a><strong>31区</strong>
										</h3>
										<p>
											<a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=gs"
												data-eid="qd_A32" target="_blank"><img
												src="img/0_021.jpg"><i class="op-tag"></i></a>
										</p>
									</dd>
									<dd data-rid="3">
										<h3>
											<span></span><i>11-23</i><a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=sgqxz"
												data-eid="qd_A33" target="_blank">三国群雄传</a><strong>34区</strong>
										</h3>
										<p>
											<a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=sgqxz"
												data-eid="qd_A33" target="_blank"><img
												src="img/0_013.jpg"><i class="op-tag"></i></a>
										</p>
									</dd>
									<dd data-rid="4">
										<h3>
											<span></span><i>11-23</i><a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=jyyx"
												data-eid="qd_A34" target="_blank">锦衣夜行</a><strong>38区</strong>
										</h3>
										<p>
											<a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=jyyx"
												data-eid="qd_A34" target="_blank"><img
												src="img/0_014.jpg"><i class="op-tag"></i></a>
										</p>
									</dd>
									<dd data-rid="5">
										<h3>
											<span></span><i>11-22</i><a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=sdyxz"
												data-eid="qd_A35" target="_blank">射雕英雄传</a><strong>15区</strong>
										</h3>
										<p>
											<a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=sdyxz"
												data-eid="qd_A35" target="_blank"><img
												src="img/0_015.jpg"><i class="op-tag"></i></a>
										</p>
									</dd>
									<dd data-rid="6">
										<h3>
											<span></span><i>11-22</i><a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=my"
												data-eid="qd_A36" target="_blank">起点魔域永恒</a><strong>7区</strong>
										</h3>
										<p>
											<a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=my"
												data-eid="qd_A36" target="_blank"><img
												src="img/0_008.jpg"><i class="op-tag"></i></a>
										</p>
									</dd>
									<dd data-rid="7">
										<h3>
											<span></span><i>11-22</i><a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=rxsg3"
												data-eid="qd_A37" target="_blank">热血三国3</a><strong>61区</strong>
										</h3>
										<p>
											<a
												href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=rxsg3"
												data-eid="qd_A37" target="_blank"><img
												src="img/0_018.jpg"><i class="op-tag"></i></a>
										</p>
									</dd>
								</dl>
								<div class="bottom">
									<h4>悬赏</h4>
									<p>
										<a
											href="http://xs.game.qidian.com/?qd_game_key=xs192x86&amp;qd_dd_p1=124"
											data-eid="qd_A38" target="_blank"><img src="img/0.gif"><span
											class="op-tag"></span></a>
									</p>
								</div>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
		<div class="focus-wrap box-center mb40 cf">
			<div class="classify-list fl so-awesome" id="classify-list"
				data-l1="3">
				<dl>
					<dd>
						<a href="https://www.qidian.com/xuanhuan" target="_blank"
							data-eid="qd_A71"><cite><em style="background-image: url(img/90_002.jpg);height: 10px;"></em><span class="info">玄幻</span></cite></a>
					</dd>
					<dd>
						<a href="https://www.qidian.com/qihuan" target="_blank"
							data-eid="qd_A72"><cite><span class="info"><i>奇幻</i></span></cite></a>
					</dd>
					<dd class="even">
						<a href="https://www.qidian.com/wuxia" target="_blank"
							data-eid="qd_A73"><cite><span class="info"><i>武侠</i></span></cite></a>
					</dd>
					<dd class="even">
						<a href="https://www.qidian.com/xianxia" target="_blank"
							data-eid="qd_A74"><cite><span class="info"><i>仙侠</i></span></cite></a>
					</dd>
					<dd>
						<a href="https://www.qidian.com/dushi" target="_blank"
							data-eid="qd_A75"><cite><span class="info"><i>都市</i></span></cite></a>
					</dd>
					<dd>
						<a href="https://www.qidian.com/xianshi" target="_blank"
							data-eid="qd_A76"><cite><span class="info"><i>现实</i></span></cite></a>
					</dd>
					<dd class="even">
						<a href="https://www.qidian.com/junshi" target="_blank"
							data-eid="qd_A77"><cite><span class="info"><i>军事</i></span></cite></a>
					</dd>
					<dd class="even">
						<a href="https://www.qidian.com/lishi" target="_blank"
							data-eid="qd_A78"><cite><span class="info"><i>历史</i></span></cite></a>
					</dd>
					<dd>
						<a href="https://www.qidian.com/youxi" target="_blank"
							data-eid="qd_A79"><cite><span class="info"><i>游戏</i></span></cite></a>
					</dd>
					<dd>
						<a href="https://www.qidian.com/tiyu" target="_blank"
							data-eid="qd_A80"><cite><span class="info"><i>体育</i></span></cite></a>
					</dd>
					<dd class="even">
						<a href="https://www.qidian.com/kehuan" target="_blank"
							data-eid="qd_A81"><cite><span class="info"><i>科幻</i></span></cite></a>
					</dd>
					<dd class="even">
						<a href="https://www.qidian.com/lingyi" target="_blank"
							data-eid="qd_A82"><cite><span class="info"><i>灵异</i></span></cite></a>
					</dd>
					<dd>
						<a href="https://www.qdmm.com/" target="_blank" data-eid="qd_A83"><cite><span
								class="info"><i>女生网</i></span></cite></a>
					</dd>
					<dd>
						<a href="https://www.qidian.com/2cy" target="_blank"
							data-eid="qd_A84"><cite><span class="info"><i>二次元</i></span></cite></a>
					</dd>
				</dl>
			</div>
			<div class="focus-box fl" data-l1="6">
				<div class="focus-slider">
					<div class="lbf-slides switchable-slides" id="switchable-slides">
						<a href="https://www.qidian.com/book/coverrec"
							target="_blank" data-eid="qd_A173"><i><em></em><em></em><em></em></i></a>
						<div id="myCarousel" class="carousel slide"
							style="width: 748px; height: 298px;">
							<!-- 轮播（Carousel）指标 -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
								<li data-target="#myCarousel" data-slide-to="3"></li>
								<li data-target="#myCarousel" data-slide-to="4"></li>
							</ol>

							<!-- 轮播（Carousel）项目 -->
							<div class="carousel-inner">
								<div class="item active">
									<img src="http://manager.lxh.com/images/novel/1.jpg"
										alt="First slide">
								</div>
								<div class="item">
									<img src="http://manager.lxh.com/images/novel/2.jpg"
										alt="Second slide">
								</div>
								<div class="item">
									<img src="http://manager.lxh.com/images/novel/3.jpg"
										alt="Third slide">
								</div>
								<div class="item">
									<img src="http://manager.lxh.com/images/novel/4.jpg"
										alt="Third slide">
								</div>
								<div class="item">
									<img src="http://manager.lxh.com/images/novel/6.jpg"
										alt="Third slide">
								</div>
							</div>

							<a class="carousel-control left" href="#myCarousel"
								data-slide="prev">‹</a> <a class="carousel-control right"
								href="#myCarousel" data-slide="next">›</a>
						</div>

					</div>
				</div>
				<div class="focus-img cf">
					<ul>
						<li><span class="op-tag"></span><a
							href="https://book.qidian.com/booklist/" target="_blank"
							data-eid="qd_A90" data-qd_dd_p1="1"><img src="img/0_002.png"></a></li>
						<li class="middle"><span class="op-tag"></span><a
							href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/mxsj/way/1?qd_game_key=mxsj180x140&amp;qd_dd_p1=252"
							target="_blank" data-eid="qd_A91" data-qd_dd_p1="1"><img
								src="img/0.png"></a></li>
						<li><span class="op-tag"></span><a
							href="https://www.qidian.com/news/detail/899888306"
							target="_blank" data-eid="qd_A92" data-qd_dd_p1="1"><img
								src="img/0_003.png"></a></li>
					</ul>
				</div>
			</div>
			<div class="notice-wrap fr">
				<div class="notice" id="notice" data-l1="7">
					<a class="more" id="more-notice"
						href="https://www.qidian.com/news/index" target="_blank"
						data-eid="qd_A190"><em class="dib-wrap point"><span></span><span></span><span></span></em><i
						style="top: -18px; right: -18px;"></i></a>
				
					<div class="notice-list">
						<ul>
							<li class="color-type_0" data-rid="1"><a
								href="http://www.qidian.com/news/detail/173339308"
								target="_blank" data-eid="qd_A94"><i>「</i>公告<i>」</i>起点论坛关闭通知</a></li>
							<li class="color-type_0" data-rid="2"><a
								href="http://www.qidian.com/news/detail/882541305"
								target="_blank" data-eid="qd_A95"><i>「</i>资讯<i>」</i>沉默的糕点新书强袭</a></li>
							<li class="color-type_0" data-rid="3"><a
								href="http://www.qidian.com/news/detail/724367304"
								target="_blank" data-eid="qd_A96"><i>「</i>资讯<i>」</i>陈风笑新书火热来袭！</a></li>
							<li class="color-type_0" data-rid="4"><a
								href="http://www.qidian.com/news/detail/716393303"
								target="_blank" data-eid="qd_A97"><i>「</i>活动<i>」</i>玄幻征文获奖公告</a></li>
							<li class="color-type_0" data-rid="5"><a class="red"
								href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/mxsj/way/1?qd_game_key=mxsj-7&amp;qd_dd_p1=3398"
								target="_blank" data-eid="qd_A98" data-qd_dd_p1="1"><em>页游</em>冒险
									我们的世界</a></li>
							<li class="color-type_0" data-rid="6"><a class="red"
								href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/gs/way/1?qd_game_key=gs-7&amp;qd_dd_p1=2095"
								target="_blank" data-eid="qd_A99" data-qd_dd_p1="1"><em>页游</em>玛法主宰者</a></li>
						</ul>
					</div>
					<div class="attention">
						<ul id="wordSlide" class="word_slide" data-rel="#wordSlide li">
							<em class="iconfont"></em>
							<li id="wordList1"
								style="display: list-item; transition: transform 250ms linear 0s; backface-visibility: hidden; transform: translateY(-100%);"
								data-rel="wordList1" data-rid="1"><a
								href="http://www.qidian.com/Book/1001836.aspx" target="_blank"
								data-eid="qd_A100">八指琴魔1230订阅了《大唐御医》</a></li>
							<li id="wordList2" data-rel="wordList2" data-rid="1"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(-100%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/3184195.aspx" target="_blank"
								data-eid="qd_A100">孙宗义订阅了《太浩》</a></li>
							<li id="wordList3" data-rel="wordList3" data-rid="2"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(0%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/1003782761.aspx"
								target="_blank" data-eid="qd_A100">太阳爱冰棒订阅了《我是杀毒软件》</a></li>
							<li id="wordList4" data-rel="wordList4" data-rid="3"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(-100%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/1931432.aspx" target="_blank"
								data-eid="qd_A100">放飞的人订阅了《校花的贴身高手》</a></li>
							<li id="wordList5" data-rel="wordList5" data-rid="4"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(-100%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/1004049700.aspx"
								target="_blank" data-eid="qd_A100">永夜之旅订阅了《美酒供应商》</a></li>
							<li id="wordList6" data-rel="wordList6" data-rid="5"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(-100%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/1004139649.aspx"
								target="_blank" data-eid="qd_A100">暗夜※繁星订阅了《有扇通往地下城的门》</a></li>
							<li id="wordList7" data-rel="wordList7" data-rid="6"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(-100%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/1004052452.aspx"
								target="_blank" data-eid="qd_A100">猫修罗订阅了《最强炊事兵》</a></li>
							<li id="wordList8" data-rel="wordList8" data-rid="7"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(-100%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/1003530168.aspx"
								target="_blank" data-eid="qd_A100">修罗之刻订阅了《特拉福买家俱乐部》</a></li>
							<li id="wordList9" data-rel="wordList9" data-rid="8"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(-100%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/3584720.aspx" target="_blank"
								data-eid="qd_A100">？小小？订阅了《超级美食帝国》</a></li>
							<li id="wordList10" data-rel="wordList10" data-rid="9"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(-100%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/1551407.aspx" target="_blank"
								data-eid="qd_A100">风月风云订阅了《末世超级商人》</a></li>
							<li id="wordList11" data-rel="wordList11" data-rid="10"
								style="display: list-item; transition: transform 250ms linear 0s; transform: translateY(-100%); backface-visibility: hidden;"><a
								href="http://www.qidian.com/Book/1003578910.aspx"
								target="_blank" data-eid="qd_A100">svgngj订阅了《重生封神之逆天成圣》</a></li>
						</ul>
					</div>
				</div>
				<div class="notice-banner" id="tr-banner" data-l1="30">
					<div class="op-tag"></div>
					<a
						href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/jyyx/way/1?qd_game_key=jyyx216x150&amp;qd_dd_p1=413"
						target="_blank" data-eid="qd_A101" data-qd_dd_p1="1"
						style="display: inline;"><img src="img/0_003.jpg"></a><a
						href="javascript:" target="_blank" data-eid="qd_A101"
						data-qd_dd_p1="1"></a>
				</div>
			</div>
			<!--<div class="focus-game-wrap" id="j-focusGameWrap" data-l1="35">
            <p><em>广告剩余时间：<i id="j-time-down">5</i>秒</em><a id="j-closeGame" href="javascript:" data-eid="qd_A194">关闭</a></p>
            <span class="op-tag"></span>
            <a class="game-link" href="http://act.yy.game.qidian.com/Ad/Cpl/index/name/xjstm?mark=31e4b5d12b" id="j-gameLink" target="_blank" data-qd_dd_p1="1" data-eid="qd_A193">
                <img src="//qidian.gtimg.com/qd/images/index/game.0.3.6579b.jpg" alt="绝世唐门">
            </a>
        </div>-->
		</div>
		<div class="index-two-wrap box-center mb40 cf">
			<div class="book-list-wrap mr30 fl" data-l1="8">
				<h3 class="wrap-title lang">
					本周强推<a class="more" href="https://www.qidian.com/book/strongrec"
						data-eid="qd_A105" target="_blank">更多<em class="iconfont"></em></a>
				</h3>
				<div class="book-list">
					<ul>
						<li class="" data-rid="1"><a class="channel"
							href="https://www.qidian.com/dushi" target="_blank"
							data-eid="qd_A102"><em>「</em>都市<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010583945"
								target="_blank" data-eid="qd_A103" data-bid="1010583945"
								title="巨星来了">巨星来了</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=4739267"
							data-eid="qd_A104" target="_blank">念笯娇</a></li>
						<li class="" data-rid="2"><a class="channel"
							href="https://www.qidian.com/dushi" target="_blank"
							data-eid="qd_A102"><em>「</em>都市<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010697504"
								target="_blank" data-eid="qd_A103" data-bid="1010697504"
								title="神人沈度">神人沈度</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=4376717"
							data-eid="qd_A104" target="_blank">南黎川</a></li>
						<li class="" data-rid="3"><a class="channel"
							href="https://www.qidian.com/dushi" target="_blank"
							data-eid="qd_A102"><em>「</em>都市<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010709923"
								target="_blank" data-eid="qd_A103" data-bid="1010709923"
								title="动力之王">动力之王</a><cite class="hot"></cite></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=2978035"
							data-eid="qd_A104" target="_blank">千年静守</a></li>
						<li class="" data-rid="4"><a class="channel"
							href="https://www.qidian.com/kehuan" target="_blank"
							data-eid="qd_A102"><em>「</em>科幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010186917"
								target="_blank" data-eid="qd_A103" data-bid="1010186917"
								title="科技邪神">科技邪神</a><cite class="hot"></cite></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=6878778"
							data-eid="qd_A104" target="_blank">东海猪妖</a></li>
						<li class="" data-rid="5"><a class="channel"
							href="https://www.qidian.com/tiyu" target="_blank"
							data-eid="qd_A102"><em>「</em>体育<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010565736"
								target="_blank" data-eid="qd_A103" data-bid="1010565736"
								title="湾区之王">湾区之王</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=5024975"
							data-eid="qd_A104" target="_blank">磨砚少年</a></li>
						<li class="" data-rid="6"><a class="channel"
							href="https://www.qidian.com/wuxia" target="_blank"
							data-eid="qd_A102"><em>「</em>武侠<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010550598"
								target="_blank" data-eid="qd_A103" data-bid="1010550598"
								title="极武天魔">极武天魔</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=6760820"
							data-eid="qd_A104" target="_blank">付梦</a></li>
						<li class="" data-rid="7"><a class="channel"
							href="https://www.qidian.com/lishi" target="_blank"
							data-eid="qd_A102"><em>「</em>历史<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010009787"
								target="_blank" data-eid="qd_A103" data-bid="1010009787"
								title="红楼名侦探">红楼名侦探</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=8940483"
							data-eid="qd_A104" target="_blank">嗷世巅锋</a></li>
						<li class="" data-rid="8"><a class="channel"
							href="https://www.qidian.com/xuanhuan" target="_blank"
							data-eid="qd_A102"><em>「</em>玄幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010635438"
								target="_blank" data-eid="qd_A103" data-bid="1010635438"
								title="信仰大爆炸">信仰大爆炸</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=3372264"
							data-eid="qd_A104" target="_blank">夜色静悄悄</a></li>
						<li class="" data-rid="9"><a class="channel"
							href="https://www.qidian.com/qihuan" target="_blank"
							data-eid="qd_A102"><em>「</em>奇幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010264382"
								target="_blank" data-eid="qd_A103" data-bid="1010264382"
								title="巫师的旅途">巫师的旅途</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=11816091"
							data-eid="qd_A104" target="_blank">好大的白兔</a></li>
						<li class="" data-rid="10"><a class="channel"
							href="https://www.qidian.com/kehuan" target="_blank"
							data-eid="qd_A102"><em>「</em>科幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010582019"
								target="_blank" data-eid="qd_A103" data-bid="1010582019"
								title="科技图书馆">科技图书馆</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=6209478"
							data-eid="qd_A104" target="_blank">孤胆蚂蚁</a></li>
						<li class="" data-rid="11"><a class="channel"
							href="https://www.qidian.com/xuanhuan" target="_blank"
							data-eid="qd_A102"><em>「</em>玄幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010105175"
								target="_blank" data-eid="qd_A103" data-bid="1010105175"
								title="强行交易系统">强行交易系统</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=10752699"
							data-eid="qd_A104" target="_blank">坐羊望山</a></li>
						<li class="str3" data-rid="12"><a class="channel"
							href="https://www.qidian.com/2cy" target="_blank"
							data-eid="qd_A102"><em>「</em>二次元<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010525090"
								target="_blank" data-eid="qd_A103" data-bid="1010525090"
								title="女装文艺人生">女装文艺人生</a><cite class="hot"></cite></strong><a
							class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=5353082"
							data-eid="qd_A104" target="_blank">羽林都督</a></li>
						<li class="" data-rid="13"><a class="channel"
							href="https://www.qidian.com/youxi" target="_blank"
							data-eid="qd_A102"><em>「</em>游戏<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010462137"
								target="_blank" data-eid="qd_A103" data-bid="1010462137"
								title="天道游戏降临">天道游戏降临</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=3299399"
							data-eid="qd_A104" target="_blank">东东是个胆小鬼</a></li>
						<li class="" data-rid="14"><a class="channel"
							href="https://www.qidian.com/xianxia" target="_blank"
							data-eid="qd_A102"><em>「</em>仙侠<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010527259"
								target="_blank" data-eid="qd_A103" data-bid="1010527259"
								title="带着系统穿历史">带着系统穿历史</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=400952088"
							data-eid="qd_A104" target="_blank">梦中捉刀人</a></li>
						<li class="" data-rid="15"><a class="channel"
							href="https://www.qidian.com/lishi" target="_blank"
							data-eid="qd_A102"><em>「</em>历史<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010343218"
								target="_blank" data-eid="qd_A103" data-bid="1010343218"
								title="说出来你可能不信">说出来你可能不信</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=2125965"
							data-eid="qd_A104" target="_blank">何时秋风悲画扇</a></li>
						<li class="" data-rid="16"><a class="channel"
							href="https://www.qidian.com/dushi" target="_blank"
							data-eid="qd_A102"><em>「</em>都市<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010027789"
								target="_blank" data-eid="qd_A103" data-bid="1010027789"
								title="重生日本之以剑称圣">重生日本之以剑称圣</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=400410212"
							data-eid="qd_A104" target="_blank">小卒没过河</a></li>
						<li class="" data-rid="17"><a class="channel"
							href="https://www.qidian.com/youxi" target="_blank"
							data-eid="qd_A102"><em>「</em>游戏<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010545066"
								target="_blank" data-eid="qd_A103" data-bid="1010545066"
								title="英雄联盟：冠军之箭">英雄联盟：冠军之箭</a></strong><a class="author"
							href="https://me.qidian.com/authorIndex.aspx?id=5758399"
							data-eid="qd_A104" target="_blank">雨雪紫冰辰</a></li>
						<li data-rid="18"><a class="channel"
							href="http://game.qidian.com/index.aspx" target="_blank"
							data-eid="qd_A106"><em>「</em>页游<em>」</em></a><a class="name"
							href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/sgqxz/way/1?qd_game_key=sgqxz-8&amp;qd_dd_p1=3618"
							target="_blank" data-eid="qd_A106" data-qd_dd_p1="1">三国群雄传</a><span
							class="author">广告</span></li>
					</ul>
				</div>
			</div>
			<div class="edit-rec-wrap fl" data-l1="9">
				<h3 class="wrap-title lang">编辑推荐</h3>
				<div class="focus-today cf" data-l2="1">
					<div class="slider-wrap fl">
						<div id="carousel" class="carousel">
							<div class="slides" style="width: 93px; height: 124px;">
								<div class="slideItem item1" data-rid="1"
									style="width: 93px; height: 136.4px; top: 0px; right: 0px; opacity: 1; z-index: 6; display: block;">
									<a href="https://book.qidian.com/info/1010191960"
										data-eid="qd_A107" data-bid="1010191960" target="_blank"><img
										src="img.jpg" title="大王饶命" alt="大王饶命"
										style="width: 93px; height: 124px; display: inline-block;"></a>
									<div class="shadow"
										style="width: 93px; z-index: -1; position: absolute; margin: 0px; padding: 0px; border: medium none; overflow: hidden; left: 0px; bottom: 0px;">
										<div class="shadowLeft"
											style="position: relative; float: left;"></div>
										<div class="shadowMiddle"
											style="position: relative; float: left; width: 93px;"></div>
										<div class="shadowRight"
											style="position: relative; float: left;"></div>
									</div>
								</div>
								<div class="slideItem item2" data-rid="2"
									style="width: 74.4px; height: 109.12px; top: 12.4px; right: -44.64px; opacity: 1; z-index: 5; display: block;">
									<a href="https://book.qidian.com/info/1003667321"
										data-eid="qd_A107" data-bid="1003667321" target="_blank"><img
										src="img/90_008.jpg" title="美食供应商" alt="美食供应商"
										style="width: 74.4px; height: 99.2px;"></a>
									<div class="shadow"
										style="width: 93px; z-index: -1; position: absolute; margin: 0px; padding: 0px; border: medium none; overflow: hidden; left: 0px; bottom: 0px;">
										<div class="shadowLeft"
											style="position: relative; float: left;"></div>
										<div class="shadowMiddle"
											style="position: relative; float: left; width: 74.4px;"></div>
										<div class="shadowRight"
											style="position: relative; float: left;"></div>
									</div>
								</div>
								<div class="slideItem item3" data-rid="3"
									style="width: 59.52px; height: 87.296px; top: 22.32px; right: -80.352px; opacity: 1; z-index: 4; display: block;">
									<a href="https://book.qidian.com/info/1004600274"
										data-eid="qd_A107" data-bid="1004600274" target="_blank"><img
										src="img/90_005.jpg" title="悟空看私聊" alt="悟空看私聊"
										style="width: 59.52px; height: 79.36px; display: inline-block;"></a>
									<div class="shadow"
										style="width: 93px; z-index: -1; position: absolute; margin: 0px; padding: 0px; border: medium none; overflow: hidden; left: 0px; bottom: 0px;">
										<div class="shadowLeft"
											style="position: relative; float: left;"></div>
										<div class="shadowMiddle"
											style="position: relative; float: left; width: 59.52px;"></div>
										<div class="shadowRight"
											style="position: relative; float: left;"></div>
									</div>
								</div>
								<div class="slideItem item4" data-rid="4"
									style="width: 47.616px; height: 69.8368px; top: 30.256px; right: -108.922px; opacity: 0; z-index: 3; display: none;">
									<a href="https://book.qidian.com/info/1004185492"
										data-eid="qd_A107" data-bid="1004185492" target="_blank"><img
										src="img/90.jpg" title="带着仓库到大明" alt="带着仓库到大明"
										style="width: 47.616px; height: 63.488px; display: inline-block;"></a>
									<div class="shadow"
										style="width: 93px; z-index: -1; position: absolute; margin: 0px; padding: 0px; border: medium none; overflow: hidden; left: 0px; bottom: 0px;">
										<div class="shadowLeft"
											style="position: relative; float: left;"></div>
										<div class="shadowMiddle"
											style="position: relative; float: left; width: 47.616px;"></div>
										<div class="shadowRight"
											style="position: relative; float: left;"></div>
									</div>
								</div>
								<div class="slideItem item5" data-rid="5"
									style="width: 47.616px; height: 69.8368px; top: 30.256px; right: 154.306px; opacity: 0; z-index: 3; display: none;">
									<a href="https://book.qidian.com/info/1010256698"
										data-eid="qd_A107" data-bid="1010256698" target="_blank"><img
										src="img/90_016.jpg" title="位面之纨绔生涯" alt="位面之纨绔生涯"
										style="width: 47.616px; height: 63.488px; display: inline-block;"></a>
									<div class="shadow"
										style="width: 93px; z-index: -1; position: absolute; margin: 0px; padding: 0px; border: medium none; overflow: hidden; left: 0px; bottom: 0px;">
										<div class="shadowLeft"
											style="position: relative; float: left;"></div>
										<div class="shadowMiddle"
											style="position: relative; float: left; width: 47.616px;"></div>
										<div class="shadowRight"
											style="position: relative; float: left;"></div>
									</div>
								</div>
								<div class="slideItem item6" data-rid="6"
									style="width: 59.52px; height: 87.296px; top: 22.32px; right: 113.832px; opacity: 1; z-index: 4; display: block;">
									<a href="https://book.qidian.com/info/1005395194"
										data-eid="qd_A107" data-bid="1005395194" target="_blank"><img
										src="img/90_017.jpg" title="仙藏" alt="仙藏"
										style="width: 59.52px; height: 79.36px; display: inline-block;"></a>
									<div class="shadow"
										style="width: 93px; z-index: -1; position: absolute; margin: 0px; padding: 0px; border: medium none; overflow: hidden; left: 0px; bottom: 0px;">
										<div class="shadowLeft"
											style="position: relative; float: left;"></div>
										<div class="shadowMiddle"
											style="position: relative; float: left; width: 59.52px;"></div>
										<div class="shadowRight"
											style="position: relative; float: left;"></div>
									</div>
								</div>
								<div class="slideItem item7" data-rid="7"
									style="width: 74.4px; height: 109.12px; top: 12.4px; right: 63.24px; opacity: 1; z-index: 5; display: block;">
									<a href="https://book.qidian.com/info/1040809"
										data-eid="qd_A107" data-bid="1040809" target="_blank"><img
										src="img/90_003.jpg" title="暗黑破坏神之毁灭" alt="暗黑破坏神之毁灭"
										style="width: 74.4px; height: 99.2px; display: inline-block;"></a>
									<div class="shadow"
										style="width: 93px; z-index: -1; position: absolute; margin: 0px; padding: 0px; border: medium none; overflow: hidden; left: 0px; bottom: 0px;">
										<div class="shadowLeft"
											style="position: relative; float: left;"></div>
										<div class="shadowMiddle"
											style="position: relative; float: left; width: 74.4px;"></div>
										<div class="shadowRight"
											style="position: relative; float: left;"></div>
									</div>
								</div>
								<div class="spinner"
									style="display: none; width: 93px; height: 124px; top: 0px; right: 0px; opacity: 1; z-index: 10; position: absolute; cursor: pointer; overflow: hidden; padding: 0px; margin: 0px; border: medium none;"></div>
								<div class="videoOverlay"
									style="display: none; width: 93px; height: 124px; top: 0px; right: 0px; opacity: 1; z-index: 9; position: absolute; cursor: pointer; overflow: hidden; padding: 0px; margin: 0px; border: medium none;"></div>
							</div>
							<div class="prevButton iconfont" data-eid="qd_A180"></div>
							<div class="nextButton iconfont" data-eid="qd_A170"></div>
							<div class="description">
								<div class="desc-wrap item1" data-rid="1"
									style="display: block; position: absolute; top: 0px; left: 0px;">
									<h3>
										<a href="https://book.qidian.com/info/1010191960"
											target="_blank" data-eid="qd_A108" data-bid="1010191960">大王饶命</a>
									</h3>
									<p>灵气复苏的时代，寂静生活碎掉了，仿佛雷霆贯穿长空。凡逆我们的终将死去，这就是法则。</p>
									<a class="read-btn"
										href="https://book.qidian.com/info/1010191960" target="_blank"
										data-eid="qd_A109" data-bid="1010191960">书籍详情</a>
								</div>
								<div class="desc-wrap item2" data-rid="2"
									style="position: absolute; top: 0px; left: 0px; display: none;">
									<h3>
										<a href="https://book.qidian.com/info/1003667321"
											target="_blank" data-eid="qd_A108" data-bid="1003667321">美食供应商</a>
									</h3>
									<p>在遥远的东方，存在着一个数次拒绝了米其林三星评价的奇怪小店。</p>
									<a class="read-btn"
										href="https://book.qidian.com/info/1003667321" target="_blank"
										data-eid="qd_A109" data-bid="1003667321">书籍详情</a>
								</div>
								<div class="desc-wrap item3" data-rid="3"
									style="position: absolute; top: 0px; left: 0px; display: none;">
									<h3>
										<a href="https://book.qidian.com/info/1004600274"
											target="_blank" data-eid="qd_A108" data-bid="1004600274">悟空看私聊</a>
									</h3>
									<p>孙悟空性情乖张，一言不合就发红包，什么请仙问卜、什么筋斗云、什么蟠桃人参果、……可谓应有尽有。</p>
									<a class="read-btn"
										href="https://book.qidian.com/info/1004600274" target="_blank"
										data-eid="qd_A109" data-bid="1004600274">书籍详情</a>
								</div>
								<div class="desc-wrap item4" data-rid="4"
									style="position: absolute; top: 0px; left: 0px; display: none;">
									<h3>
										<a href="https://book.qidian.com/info/1004185492"
											target="_blank" data-eid="qd_A108" data-bid="1004185492">带着仓库到大明</a>
									</h3>
									<p>方醒穿了，带着两个仓库穿了！别人穿越是带着王霸之气，方醒却是只想种田！</p>
									<a class="read-btn"
										href="https://book.qidian.com/info/1004185492" target="_blank"
										data-eid="qd_A109" data-bid="1004185492">书籍详情</a>
								</div>
								<div class="desc-wrap item5" data-rid="5"
									style="position: absolute; top: 0px; left: 0px; display: none;">
									<h3>
										<a href="https://book.qidian.com/info/1010256698"
											target="_blank" data-eid="qd_A108" data-bid="1010256698">位面之纨绔生涯</a>
									</h3>
									<p>纨绔没人权？纨绔大学生，穿越位面，获得奖励，一步步变强！</p>
									<a class="read-btn"
										href="https://book.qidian.com/info/1010256698" target="_blank"
										data-eid="qd_A109" data-bid="1010256698">书籍详情</a>
								</div>
								<div class="desc-wrap item6" data-rid="6"
									style="position: absolute; top: 0px; left: 0px; display: none;">
									<h3>
										<a href="https://book.qidian.com/info/1005395194"
											target="_blank" data-eid="qd_A108" data-bid="1005395194">仙藏</a>
									</h3>
									<p>穿成异界少年，得神奇桃核，开启传奇修真生涯！</p>
									<a class="read-btn"
										href="https://book.qidian.com/info/1005395194" target="_blank"
										data-eid="qd_A109" data-bid="1005395194">书籍详情</a>
								</div>
								<div class="desc-wrap item7" data-rid="7"
									style="position: absolute; top: 0px; left: 0px; display: none;">
									<h3>
										<a href="https://book.qidian.com/info/1040809" target="_blank"
											data-eid="qd_A108" data-bid="1040809">暗黑破坏神之毁灭</a>
									</h3>
									<p>穿越到了暗黑的世界，我的bug护符竟然有效。加7技能，加经验掉率……</p>
									<a class="read-btn" href="https://book.qidian.com/info/1040809"
										target="_blank" data-eid="qd_A109" data-bid="1040809">书籍详情</a>
								</div>
							</div>
							<div class="nextButton"></div>
							<div class="prevButton"></div>
							<div class="buttonNav" style="width: 126px; height: 9px;">
								<div class="bullet bulletActive" style="text-align: center;"></div>
								<div class="bullet" style="text-align: center;"></div>
								<div class="bullet" style="text-align: center;"></div>
								<div class="bullet" style="text-align: center;"></div>
								<div class="bullet" style="text-align: center;"></div>
								<div class="bullet" style="text-align: center;"></div>
								<div class="bullet" style="text-align: center;"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="edit-rec">
					<ul class="edit-rec-list bd cf" data-l2="2">
						<li data-rid="1"><h3>
								<a href="https://book.qidian.com/info/1009514754"
									data-eid="qd_A110" data-bid="1009514754" target="_blank">我要做好莱坞巨星！</a>
							</h3> <em class="total"><cite>51,609</cite><i>人在追</i></em>
							<p>我要躺在钞票堆里打滚！我要做好莱坞巨星！</p></li>
						<li data-rid="2"><h3>
								<a href="https://book.qidian.com/info/1010378782"
									data-eid="qd_A110" data-bid="1010378782" target="_blank">一家神奇的铁匠铺</a>
							</h3> <em class="total"><cite>14,377</cite><i>人在追</i></em>
							<p>修真界，有一家神奇的铁匠铺，它的每件作品，都能引起全世界的追逐……</p></li>
						<li data-rid="3"><h3>
								<a href="https://book.qidian.com/info/1010076307"
									data-eid="qd_A110" data-bid="1010076307" target="_blank">武道与科技的结合</a>
							</h3> <em class="total"><cite>13,925</cite><i>人在追</i></em>
							<p>当江湖不再局限于一城一国，当武道文明发展成宇宙各次元文明，竞争便就此展开</p></li>
					</ul>
					<div class="rel">
						<p class="line"></p>
					</div>
					<ul class="edit-rec-list cf" data-l2="2">
						<li data-rid="4"><h3>
								<a href="https://book.qidian.com/info/1003422010"
									data-eid="qd_A110" data-bid="1003422010" target="_blank">神级机械猎人传奇</a>
							</h3> <em class="total"><cite>108,433</cite><i>人在追</i></em>
							<p>看我带着飞机头，蜘蛛坦克，死神4000，速刷副本，虐杀BOSS！</p></li>
						<li data-rid="5"><h3>
								<a href="https://book.qidian.com/info/1010303740"
									data-eid="qd_A110" data-bid="1010303740" target="_blank">一切从贞子开始：爬出来累不</a>
							</h3> <em class="total"><cite>45,831</cite><i>人在追</i></em>
							<p>热烈的挥舞着小手，对电视里钻出的厉鬼说，贞子你好</p></li>
						<li data-rid="6"><h3>
								<a href="https://book.qidian.com/info/1005276026"
									data-eid="qd_A110" data-bid="1005276026" target="_blank">寒门枭士改写北宋</a>
							</h3> <em class="total"><cite>58,375</cite><i>人在追</i></em>
							<p>当金兵的铁蹄即将踏碎黄河坚冰，他走进了这个繁华如清明上河图的时代。</p></li>
					</ul>
					<div class="edit-rec-img-list cf" data-l2="3">
						<ul>
							<li data-rid="1"><div class="hover-box">
									<div class="book-info">
										<h3>
											<a href="https://book.qidian.com/info/1010691914"
												data-eid="qd_A172" data-bookid="1010691914" target="_blank">机甲大师</a>
										</h3>
										<p>名驹乌骓，是一台高能曲率引擎？上古名将，皆顶级机师？</p>
									</div>
									<div class="book-img">
										<a href="https://book.qidian.com/info/1010691914"
											target="_blank" data-eid="qd_A171" data-bid="1009514754"><img
											class="lazy" src="img/default_book.png"
											data-original="//qidian.qpic.cn/qdbimg/349573/1010691914/90"
											alt="机甲定制大师"></a>
									</div>
								</div></li>
							<li data-rid="2"><div class="hover-box">
									<div class="book-info">
										<h3>
											<a href="https://book.qidian.com/info/1010496369"
												data-eid="qd_A172" data-bookid="1010496369" target="_blank">问道修仙</a>
										</h3>
										<p>阅文集团白金作家猫腻新作震撼来袭，大道朝天：千里杀一人，十步不愿行。</p>
									</div>
									<div class="book-img">
										<a href="https://book.qidian.com/info/1010496369"
											target="_blank" data-eid="qd_A171" data-bid="1010378782"><img
											class="lazy" src="png/default_book.png"
											data-original="//qidian.qpic.cn/qdbimg/349573/1010496369/90"
											alt="大道朝天"></a>
									</div>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="book-list-wrap fr" data-l1="10">
				<h3 class="wrap-title lang">
					三江<i>·</i>网文新风<a class="more"
						href="https://www.qidian.com/book/sanjiang" data-eid="qd_A114"
						target="_blank">更多<em class="iconfont"></em></a>
				</h3>
				<div class="book-list">
					<ul>
						<li class="" data-rid="1"><a class="channel"
							href="https://www.qidian.com/xianxia" data-eid="qd_A112"
							target="_blank"><em>「</em>仙侠<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010677034"
								data-eid="qd_A113" target="_blank" data-bid="1010677034"
								title="摧神">摧神</a></strong><span class="rec" target="_blank">执掌雷法</span></li>
						<li class="" data-rid="2"><a class="channel"
							href="https://www.qidian.com/dushi" data-eid="qd_A112"
							target="_blank"><em>「</em>都市<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1009526658"
								data-eid="qd_A113" target="_blank" data-bid="1009526658"
								title="野性为王">野性为王</a></strong><span class="rec" target="_blank">直播系统</span></li>
						<li class="" data-rid="3"><a class="channel"
							href="https://www.qidian.com/xuanhuan" data-eid="qd_A112"
							target="_blank"><em>「</em>玄幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010496369"
								data-eid="qd_A113" target="_blank" data-bid="1010496369"
								title="大道朝天">大道朝天</a><cite class="hot"></cite></strong><span class="rec"
							target="_blank">问道修仙</span></li>
						<li class="" data-rid="4"><a class="channel"
							href="https://www.qidian.com/xuanhuan" data-eid="qd_A112"
							target="_blank"><em>「</em>玄幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010587404"
								data-eid="qd_A113" target="_blank" data-bid="1010587404"
								title="霸武神王">霸武神王</a></strong><span class="rec" target="_blank">无敌流</span></li>
						<li class="" data-rid="5"><a class="channel"
							href="https://www.qidian.com/lishi" data-eid="qd_A112"
							target="_blank"><em>「</em>历史<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010559958"
								data-eid="qd_A113" target="_blank" data-bid="1010559958"
								title="并州李义">并州李义</a></strong><span class="rec" target="_blank">制霸三国</span></li>
						<li class="" data-rid="6"><a class="channel"
							href="https://www.qidian.com/youxi" data-eid="qd_A112"
							target="_blank"><em>「</em>游戏<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010702972"
								data-eid="qd_A113" target="_blank" data-bid="1010702972"
								title="万界登陆">万界登陆</a></strong><span class="rec" target="_blank">重生归来</span></li>
						<li class="" data-rid="7"><a class="channel"
							href="https://www.qidian.com/dushi" data-eid="qd_A112"
							target="_blank"><em>「</em>都市<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010739099"
								data-eid="qd_A113" target="_blank" data-bid="1010739099"
								title="西游地图">西游地图</a></strong><span class="rec" target="_blank">轻松种田</span></li>
						<li class="" data-rid="8"><a class="channel"
							href="https://www.qidian.com/dushi" data-eid="qd_A112"
							target="_blank"><em>「</em>都市<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010702296"
								data-eid="qd_A113" target="_blank" data-bid="1010702296"
								title="僵尸的女仆">僵尸的女仆</a></strong><span class="rec" target="_blank">爆笑穿越</span></li>
						<li class="" data-rid="9"><a class="channel"
							href="https://www.qidian.com/xianxia" data-eid="qd_A112"
							target="_blank"><em>「</em>仙侠<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010570023"
								data-eid="qd_A113" target="_blank" data-bid="1010570023"
								title="聊斋之剑仙">聊斋之剑仙</a></strong><span class="rec" target="_blank">聊斋剑道</span></li>
						<li class="" data-rid="10"><a class="channel"
							href="https://www.qidian.com/kehuan" data-eid="qd_A112"
							target="_blank"><em>「</em>科幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010652335"
								data-eid="qd_A113" target="_blank" data-bid="1010652335"
								title="宿主请留步">宿主请留步</a></strong><span class="rec" target="_blank">化身系统</span></li>
						<li class="" data-rid="11"><a class="channel"
							href="https://www.qidian.com/dushi" data-eid="qd_A112"
							target="_blank"><em>「</em>都市<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010674217"
								data-eid="qd_A113" target="_blank" data-bid="1010674217"
								title="重生梦想花开">重生梦想花开</a></strong><span class="rec" target="_blank">重生赚钱</span></li>
						<li class="" data-rid="12"><a class="channel"
							href="https://www.qidian.com/xuanhuan" data-eid="qd_A112"
							target="_blank"><em>「</em>玄幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010691914"
								data-eid="qd_A113" target="_blank" data-bid="1010691914"
								title="机甲定制大师">机甲定制大师</a><cite class="hot"></cite></strong><span
							class="rec" target="_blank">机甲大师</span></li>
						<li class="" data-rid="13"><a class="channel"
							href="https://www.qidian.com/kehuan" data-eid="qd_A112"
							target="_blank"><em>「</em>科幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010563262"
								data-eid="qd_A113" target="_blank" data-bid="1010563262"
								title="崛起漫画世界">崛起漫画世界</a></strong><span class="rec" target="_blank">穿越漫画</span></li>
						<li class="str3" data-rid="14"><a class="channel"
							href="https://www.qidian.com/2cy" data-eid="qd_A112"
							target="_blank"><em>「</em>二次元<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010705930"
								data-eid="qd_A113" target="_blank" data-bid="1010705930"
								title="二次元马甲系统">二次元马甲系统</a></strong><span class="rec" target="_blank">角色扮演</span></li>
						<li class="" data-rid="15"><a class="channel"
							href="https://www.qidian.com/wuxia" data-eid="qd_A112"
							target="_blank"><em>「</em>武侠<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010559838"
								data-eid="qd_A113" target="_blank" data-bid="1010559838"
								title="当代武林掌门录">当代武林掌门录</a></strong><span class="rec" target="_blank">都市江湖</span></li>
						<li class="" data-rid="16"><a class="channel"
							href="https://www.qidian.com/qihuan" data-eid="qd_A112"
							target="_blank"><em>「</em>奇幻<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010693223"
								data-eid="qd_A113" target="_blank" data-bid="1010693223"
								title="美漫世界霸王轨迹">美漫世界霸王轨迹</a></strong><span class="rec" target="_blank">美漫英雄</span></li>
						<li class="str3" data-rid="17"><a class="channel"
							href="https://www.qidian.com/2cy" data-eid="qd_A112"
							target="_blank"><em>「</em>二次元<em>」</em></a><strong><a
								class="name" href="https://book.qidian.com/info/1010531595"
								data-eid="qd_A113" target="_blank" data-bid="1010531595"
								title="老婆重生还变身是什么操作">老婆重生还变身是什么操作</a></strong><span class="rec"
							target="_blank">病娇女友</span></li>
						<li><a class="channel"
							href="http://game.qidian.com/index.aspx" target="_blank"
							data-eid="qd_A115"><em>「</em>页游<em>」</em></a><a class="name"
							href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/jyyx/way/1?qd_game_key=jyyx-9&amp;qd_dd_p1=3031"
							target="_blank" data-eid="qd_A115" data-qd_dd_p1="1">锦衣夜行</a><span
							class="rec">广告</span></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="banner-wrap box-center mb30" id="banner-two" data-l1="31">
			<a
				href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/jyyx/way/1?qd_game_key=jyyx1200x100s&amp;qd_dd_p1=415"
				target="_blank" data-eid="qd_A116" data-qd_dd_p1="1"
				style="display: inline;"><img src="img/0_011.jpg"><span
				class="op-tag"></span></a><a href="javascript:" target="_blank"
				data-eid="qd_A116" data-qd_dd_p1="1"><span class="op-tag"></span></a>
		</div>
		<div class="rank-wrap box-center mb20" data-l1="11">
			<div id="numero3">
				<div id="rank-list-row" class="rank-list-row cf mb20">
					<div class="rank-list" data-l2="1">
						<h3 class="wrap-title lang">
							原创风云榜<i>·</i>新书<a class="more"
								href="https://www.qidian.com/rank/yuepiao?chn=0"
								data-eid="qd_A118" target="_blank">更多<em class="iconfont"></em></a>
						</h3>
						<div class="book-list">
							<ul>
								<li class="unfold" data-rid="1"><div class="book-wrap cf">
										<div class="book-info fl">
											<h3>NO.1</h3>
											<h4>
												<a href="https://book.qidian.com/info/1010468795"
													target="_blank" data-eid="qd_A117" data-bid="1010468795">飞剑问道</a>
											</h4>
											<p class="digital">
												<em>41258</em>月票
											</p>
											<p class="author">
												<a class="type" href="https://www.qidian.com/xianxia"
													target="_blank">仙侠</a><i>·</i><a class="writer"
													href="https://me.qidian.com/authorIndex.aspx?id=4362096"
													target="_blank">我吃西红柿</a>
											</p>
										</div>
										<div class="book-cover">
											<a class="link"
												href="https://book.qidian.com/info/1010468795"
												data-eid="qd_A117" target="_blank" data-bid="1010468795"><img
												src="img/90_004.jpg" alt="飞剑问道"></a><span></span>
										</div>
									</div></li>
								<li data-rid="2"><div class="num-box">
										<span class="num2">2</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010245952"
											target="_blank" data-eid="qd_A117" data-bid="1010245952">重燃</a><i
											class="total">6892</i>
									</div></li>
								<li data-rid="3"><div class="num-box">
										<span class="num3">3</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010377389"
											target="_blank" data-eid="qd_A117" data-bid="1010377389">全能游戏设计师</a><i
											class="total">6561</i>
									</div></li>
								<li data-rid="4"><div class="num-box">
										<span class="num4">4</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010514176"
											target="_blank" data-eid="qd_A117" data-bid="1010514176">重生军工子弟</a><i
											class="total">6097</i>
									</div></li>
								<li data-rid="5"><div class="num-box">
										<span class="num5">5</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010463703"
											target="_blank" data-eid="qd_A117" data-bid="1010463703">系统的黑科技网吧</a><i
											class="total">5986</i>
									</div></li>
								<li data-rid="6"><div class="num-box">
										<span class="num6">6</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010539872"
											target="_blank" data-eid="qd_A117" data-bid="1010539872">间谍的战争</a><i
											class="total">5484</i>
									</div></li>
								<li data-rid="7"><div class="num-box">
										<span class="num7">7</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010474452"
											target="_blank" data-eid="qd_A117" data-bid="1010474452">大自在天尊</a><i
											class="total">5249</i>
									</div></li>
								<li data-rid="8"><div class="num-box">
										<span class="num8">8</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010474842"
											target="_blank" data-eid="qd_A117" data-bid="1010474842">就问你气不气</a><i
											class="total">3948</i>
									</div></li>
								<li data-rid="9"><div class="num-box">
										<span class="num9">9</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010438082"
											target="_blank" data-eid="qd_A117" data-bid="1010438082">文娱万岁</a><i
											class="total">3811</i>
									</div></li>
								<li data-rid="10"><div class="num-box">
										<span class="num10">10</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010450940"
											target="_blank" data-eid="qd_A117" data-bid="1010450940">人道崛起</a><i
											class="total">3601</i>
									</div></li>
								<li data-rid="11"><div class="num-box">
										<span class="num11">11</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1004957705"
											target="_blank" data-eid="qd_A117" data-bid="1004957705">奋斗在晚明</a><i
											class="total">3236</i>
									</div></li>
								<li data-rid="12"><div class="num-box">
										<span class="num12">12</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010371270"
											target="_blank" data-eid="qd_A117" data-bid="1010371270">跑出我人生</a><i
											class="total">3065</i>
									</div></li>
								<li data-rid="13"><div class="num-box">
										<span class="num13">13</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010474128"
											target="_blank" data-eid="qd_A117" data-bid="1010474128">欢迎来到BOSS队</a><i
											class="total">2497</i>
									</div></li>
								<li data-rid="14"><div class="num-box">
										<span class="num14">14</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010558260"
											target="_blank" data-eid="qd_A117" data-bid="1010558260">朝阳警事</a><i
											class="total">2227</i>
									</div></li>
								<li data-rid="15"><div class="num-box">
										<span class="num15">15</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010512995"
											target="_blank" data-eid="qd_A117" data-bid="1010512995">灵魂导游</a><i
											class="total">1618</i>
									</div></li>
							</ul>
						</div>
					</div>
					<div class="rank-list sort-list" data-l2="2">
						<h3 class="wrap-title lang">
							24小时热销榜<a class="more"
								href="https://www.qidian.com/rank/hotsales" data-eid="qd_A118"
								target="_blank">更多<em class="iconfont"></em></a>
						</h3>
						<div class="book-list">
							<ul>
								<li class="unfold" data-rid="1"><div class="book-wrap cf">
										<div class="book-info fl">
											<h3>NO.1</h3>
											<h4>
												<a href="https://book.qidian.com/info/1004608738"
													target="_blank" data-eid="qd_A117" data-bid="1004608738">圣墟</a>
											</h4>
											<p class="digital f16">销量冠军</p>
											<p class="author">
												<a class="type" href="https://www.qidian.com/xuanhuan"
													target="_blank">玄幻</a><i>·</i><a class="writer"
													href="https://me.qidian.com/authorIndex.aspx?id=4362453"
													target="_blank">辰东</a>
											</p>
										</div>
										<div class="book-cover">
											<a class="link"
												href="https://book.qidian.com/info/1004608738"
												data-eid="qd_A117" target="_blank" data-bid="1004608738"><img
												src="img/90_007.jpg" alt="圣墟"></a><span></span>
										</div>
									</div></li>
								<li data-rid="2"><div class="num-box">
										<span class="num2">2</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/3602691"
											target="_blank" data-eid="qd_A117" data-bid="3602691">修真聊天群</a><span
											class="iconfont up"></span>
									</div></li>
								<li data-rid="3"><div class="num-box">
										<span class="num3">3</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1003354631"
											target="_blank" data-eid="qd_A117" data-bid="1003354631">一念永恒</a><span
											class="iconfont"></span>
									</div></li>
								<li data-rid="4"><div class="num-box">
										<span class="num4">4</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010191960"
											target="_blank" data-eid="qd_A117" data-bid="1010191960">大王饶命</a><span
											class="iconfont"></span>
									</div></li>
								<li data-rid="5"><div class="num-box">
										<span class="num5">5</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1004185492"
											target="_blank" data-eid="qd_A117" data-bid="1004185492">带着仓库到大明</a><span
											class="iconfont"></span>
									</div></li>
								<li data-rid="6"><div class="num-box">
										<span class="num6">6</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1003580078"
											target="_blank" data-eid="qd_A117" data-bid="1003580078">重生之财源滚滚</a><span
											class="iconfont"></span>
									</div></li>
								<li data-rid="7"><div class="num-box">
										<span class="num7">7</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010468795"
											target="_blank" data-eid="qd_A117" data-bid="1010468795">飞剑问道</a><span
											class="iconfont up"></span>
									</div></li>
								<li data-rid="8"><div class="num-box">
										<span class="num8">8</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1004179514"
											target="_blank" data-eid="qd_A117" data-bid="1004179514">天道图书馆</a><span
											class="iconfont up"></span>
									</div></li>
								<li data-rid="9"><div class="num-box">
										<span class="num9">9</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010136878"
											target="_blank" data-eid="qd_A117" data-bid="1010136878">汉乡</a><span
											class="iconfont up"></span>
									</div></li>
								<li data-rid="10"><div class="num-box">
										<span class="num10">10</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1009915605"
											target="_blank" data-eid="qd_A117" data-bid="1009915605">奶爸的文艺人生</a><span
											class="iconfont"></span>
									</div></li>
								<li data-rid="11"><div class="num-box">
										<span class="num11">11</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1003307568"
											target="_blank" data-eid="qd_A117" data-bid="1003307568">不朽凡人</a><span
											class="iconfont"></span>
									</div></li>
								<li data-rid="12"><div class="num-box">
										<span class="num12">12</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1009704712"
											target="_blank" data-eid="qd_A117" data-bid="1009704712">牧神记</a><span
											class="iconfont"></span>
									</div></li>
								<li data-rid="13"><div class="num-box">
										<span class="num13">13</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/2510964"
											target="_blank" data-eid="qd_A117" data-bid="2510964">龙皇武神</a><span
											class="iconfont"></span>
									</div></li>
								<li data-rid="14"><div class="num-box">
										<span class="num14">14</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/3258971"
											target="_blank" data-eid="qd_A117" data-bid="3258971">帝霸</a><span
											class="iconfont up"></span>
									</div></li>
								<li data-rid="15"><div class="num-box">
										<span class="num15">15</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/3662715"
											target="_blank" data-eid="qd_A117" data-bid="3662715">大魏宫廷</a><span
											class="iconfont"></span>
									</div></li>
							</ul>
						</div>
					</div>
					<div class="rank-list" data-l2="3">
						<h3 class="wrap-title lang">
							新锐会员周点击榜<a class="more"
								href="https://www.qidian.com/rank/newvipclick" target="_blank"
								data-eid="qd_A118">更多<em class="iconfont"></em></a>
						</h3>
						<div class="book-list">
							<ul>
								<li class="unfold" data-rid="1"><div class="book-wrap cf">
										<div class="book-info fl">
											<h3>NO.1</h3>
											<h4>
												<a href="https://book.qidian.com/info/1010468795"
													target="_blank" data-eid="qd_A117" data-bid="1010468795">飞剑问道</a>
											</h4>
											<p class="digital">
												<em>461172</em>点击
											</p>
											<p class="author">
												<a class="type" href="https://www.qidian.com/xianxia"
													target="_blank">仙侠</a><i>·</i><a class="writer"
													href="https://me.qidian.com/authorIndex.aspx?id=4362096"
													target="_blank">我吃西红柿</a>
											</p>
										</div>
										<div class="book-cover">
											<a class="link"
												href="https://book.qidian.com/info/1010468795"
												data-eid="qd_A117" target="_blank" data-bid="1010468795"><img
												src="img/90_004.jpg" alt="飞剑问道"></a><span></span>
										</div>
									</div></li>
								<li data-rid="2"><div class="num-box">
										<span class="num2">2</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010136878"
											target="_blank" data-eid="qd_A117" data-bid="1010136878">汉乡</a><i
											class="total">366243</i>
									</div></li>
								<li data-rid="3"><div class="num-box">
										<span class="num3">3</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010191960"
											target="_blank" data-eid="qd_A117" data-bid="1010191960">大王饶命</a><i
											class="total">278358</i>
									</div></li>
								<li data-rid="4"><div class="num-box">
										<span class="num4">4</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1009915605"
											target="_blank" data-eid="qd_A117" data-bid="1009915605">奶爸的文艺人生</a><i
											class="total">274111</i>
									</div></li>
								<li data-rid="5"><div class="num-box">
										<span class="num5">5</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010734492"
											target="_blank" data-eid="qd_A117" data-bid="1010734492">凡人修仙之仙界篇</a><i
											class="total">198768</i>
									</div></li>
								<li data-rid="6"><div class="num-box">
										<span class="num6">6</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010496369"
											target="_blank" data-eid="qd_A117" data-bid="1010496369">大道朝天</a><i
											class="total">183164</i>
									</div></li>
								<li data-rid="7"><div class="num-box">
										<span class="num7">7</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010463703"
											target="_blank" data-eid="qd_A117" data-bid="1010463703">系统的黑科技网吧</a><i
											class="total">159169</i>
									</div></li>
								<li data-rid="8"><div class="num-box">
										<span class="num8">8</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010245952"
											target="_blank" data-eid="qd_A117" data-bid="1010245952">重燃</a><i
											class="total">136573</i>
									</div></li>
								<li data-rid="9"><div class="num-box">
										<span class="num9">9</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010377389"
											target="_blank" data-eid="qd_A117" data-bid="1010377389">全能游戏设计师</a><i
											class="total">117178</i>
									</div></li>
								<li data-rid="10"><div class="num-box">
										<span class="num10">10</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010514176"
											target="_blank" data-eid="qd_A117" data-bid="1010514176">重生军工子弟</a><i
											class="total">115826</i>
									</div></li>
								<li data-rid="11"><div class="num-box">
										<span class="num11">11</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010032521"
											target="_blank" data-eid="qd_A117" data-bid="1010032521">巫师不朽</a><i
											class="total">115256</i>
									</div></li>
								<li data-rid="12"><div class="num-box">
										<span class="num12">12</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010044301"
											target="_blank" data-eid="qd_A117" data-bid="1010044301">我的身体有bug</a><i
											class="total">113782</i>
									</div></li>
								<li data-rid="13"><div class="num-box">
										<span class="num13">13</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010092001"
											target="_blank" data-eid="qd_A117" data-bid="1010092001">女帝家的小白脸</a><i
											class="total">111171</i>
									</div></li>
								<li data-rid="14"><div class="num-box">
										<span class="num14">14</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010474128"
											target="_blank" data-eid="qd_A117" data-bid="1010474128">欢迎来到BOSS队</a><i
											class="total">111124</i>
									</div></li>
								<li data-rid="15"><div class="num-box">
										<span class="num15">15</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010709923"
											target="_blank" data-eid="qd_A117" data-bid="1010709923">动力之王</a><i
											class="total">98937</i>
									</div></li>
							</ul>
						</div>
					</div>
					<div class="rank-list" data-l2="4">
						<h3 class="wrap-title lang">
							周推荐票榜<a class="more" href="https://www.qidian.com/rank/recom"
								target="_blank" data-eid="qd_A118">更多<em class="iconfont"></em></a>
						</h3>
						<div class="book-list">
							<ul>
								<li class="unfold" data-rid="1"><div class="book-wrap cf">
										<div class="book-info fl">
											<h3>NO.1</h3>
											<h4>
												<a href="https://book.qidian.com/info/1010468795"
													target="_blank" data-eid="qd_A117" data-bid="1010468795">飞剑问道</a>
											</h4>
											<p class="digital">
												<em>210011</em>推荐票
											</p>
											<p class="author">
												<a class="type" href="https://www.qidian.com/xianxia"
													target="_blank">仙侠</a><i>·</i><a class="writer"
													href="https://me.qidian.com/authorIndex.aspx?id=4362096"
													target="_blank">我吃西红柿</a>
											</p>
										</div>
										<div class="book-cover">
											<a class="link"
												href="https://book.qidian.com/info/1010468795"
												target="_blank" data-eid="qd_A117" data-bid="1010468795"><img
												src="img/90_004.jpg" alt="飞剑问道"></a><span></span>
										</div>
									</div></li>
								<li data-rid="2"><div class="num-box">
										<span class="num2">2</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/2510964"
											target="_blank" data-eid="qd_A117" data-bid="2510964">龙皇武神</a><i
											class="total">141711</i>
									</div></li>
								<li data-rid="3"><div class="num-box">
										<span class="num3">3</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1003694333"
											target="_blank" data-eid="qd_A117" data-bid="1003694333">斗战狂潮</a><i
											class="total">134300</i>
									</div></li>
								<li data-rid="4"><div class="num-box">
										<span class="num4">4</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1004608738"
											target="_blank" data-eid="qd_A117" data-bid="1004608738">圣墟</a><i
											class="total">127725</i>
									</div></li>
								<li data-rid="5"><div class="num-box">
										<span class="num5">5</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010566688"
											target="_blank" data-eid="qd_A117" data-bid="1010566688">苍穹之上</a><i
											class="total">118185</i>
									</div></li>
								<li data-rid="6"><div class="num-box">
										<span class="num6">6</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1004179514"
											target="_blank" data-eid="qd_A117" data-bid="1004179514">天道图书馆</a><i
											class="total">116023</i>
									</div></li>
								<li data-rid="7"><div class="num-box">
										<span class="num7">7</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1009265821"
											target="_blank" data-eid="qd_A117" data-bid="1009265821">无疆</a><i
											class="total">104752</i>
									</div></li>
								<li data-rid="8"><div class="num-box">
										<span class="num8">8</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1003354631"
											target="_blank" data-eid="qd_A117" data-bid="1003354631">一念永恒</a><i
											class="total">97790</i>
									</div></li>
								<li data-rid="9"><div class="num-box">
										<span class="num9">9</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010734486"
											target="_blank" data-eid="qd_A117" data-bid="1010734486">六迹之梦魇宫</a><i
											class="total">96426</i>
									</div></li>
								<li data-rid="10"><div class="num-box">
										<span class="num10">10</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1005238666"
											target="_blank" data-eid="qd_A117" data-bid="1005238666">万界天尊</a><i
											class="total">95425</i>
									</div></li>
								<li data-rid="11"><div class="num-box">
										<span class="num11">11</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1004595892"
											target="_blank" data-eid="qd_A117" data-bid="1004595892">滇娇传之天悦东方</a><i
											class="total">95413</i>
									</div></li>
								<li data-rid="12"><div class="num-box">
										<span class="num12">12</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1003683523"
											target="_blank" data-eid="qd_A117" data-bid="1003683523">最后一个使徒</a><i
											class="total">93449</i>
									</div></li>
								<li data-rid="13"><div class="num-box">
										<span class="num13">13</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010298084"
											target="_blank" data-eid="qd_A117" data-bid="1010298084">尘骨</a><i
											class="total">92857</i>
									</div></li>
								<li data-rid="14"><div class="num-box">
										<span class="num14">14</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010734492"
											target="_blank" data-eid="qd_A117" data-bid="1010734492">凡人修仙之仙界篇</a><i
											class="total">77929</i>
									</div></li>
								<li data-rid="15"><div class="num-box">
										<span class="num15">15</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010519813"
											target="_blank" data-eid="qd_A117" data-bid="1010519813">奇遇无限</a><i
											class="total">76922</i>
									</div></li>
							</ul>
						</div>
					</div>
					<div class="rank-list mr0" data-l2="5">
						<h3 class="wrap-title lang">
							签约作家新书榜<a class="more"
								href="https://www.qidian.com/rank/signnewbook" target="_blank"
								data-eid="qd_A118">更多<em class="iconfont"></em></a>
						</h3>
						<div class="book-list">
							<ul>
								<li class="unfold" data-rid="1"><div class="book-wrap cf">
										<div class="book-info fl">
											<h3>NO.1</h3>
											<h4>
												<a href="https://book.qidian.com/info/1010734492"
													target="_blank" data-eid="qd_A117" data-bid="1010734492">凡人修仙之仙界篇</a>
											</h4>
											<p class="digital">
												<em>1573626</em>潜力值
											</p>
											<p class="author">
												<a class="type" href="https://www.qidian.com/xianxia"
													target="_blank">仙侠</a><i>·</i><a class="writer"
													href="https://me.qidian.com/authorIndex.aspx?id=4362771"
													target="_blank">忘语</a>
											</p>
										</div>
										<div class="book-cover">
											<a class="link"
												href="https://book.qidian.com/info/1010734492"
												target="_blank" data-eid="qd_A117" data-bid="1010734492"><img
												src="img/90_013.jpg" alt="凡人修仙之仙界篇"></a><span></span>
										</div>
									</div></li>
								<li data-rid="2"><div class="num-box">
										<span class="num2">2</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010768025"
											target="_blank" data-eid="qd_A117" data-bid="1010768025">巅峰文明</a><i
											class="total">509180</i>
									</div></li>
								<li data-rid="3"><div class="num-box">
										<span class="num3">3</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010259609"
											target="_blank" data-eid="qd_A117" data-bid="1010259609">我是仙凡</a><i
											class="total">353260</i>
									</div></li>
								<li data-rid="4"><div class="num-box">
										<span class="num4">4</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010795768"
											target="_blank" data-eid="qd_A117" data-bid="1010795768">德猎</a><i
											class="total">305346</i>
									</div></li>
								<li data-rid="5"><div class="num-box">
										<span class="num5">5</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1005080011"
											target="_blank" data-eid="qd_A117" data-bid="1005080011">北宋最强大少爷</a><i
											class="total">284148</i>
									</div></li>
								<li data-rid="6"><div class="num-box">
										<span class="num6">6</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010739458"
											target="_blank" data-eid="qd_A117" data-bid="1010739458">大宋国贼</a><i
											class="total">264292</i>
									</div></li>
								<li data-rid="7"><div class="num-box">
										<span class="num7">7</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010835972"
											target="_blank" data-eid="qd_A117" data-bid="1010835972">妹纸不是人</a><i
											class="total">253529</i>
									</div></li>
								<li data-rid="8"><div class="num-box">
										<span class="num8">8</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010795374"
											target="_blank" data-eid="qd_A117" data-bid="1010795374">明鹿鼎记</a><i
											class="total">250594</i>
									</div></li>
								<li data-rid="9"><div class="num-box">
										<span class="num9">9</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010737835"
											target="_blank" data-eid="qd_A117" data-bid="1010737835">大数据修仙</a><i
											class="total">230968</i>
									</div></li>
								<li data-rid="10"><div class="num-box">
										<span class="num10">10</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010804363"
											target="_blank" data-eid="qd_A117" data-bid="1010804363">赘入豪门</a><i
											class="total">182535</i>
									</div></li>
								<li data-rid="11"><div class="num-box">
										<span class="num11">11</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010796531"
											target="_blank" data-eid="qd_A117" data-bid="1010796531">精灵之沙暴天王</a><i
											class="total">163962</i>
									</div></li>
								<li data-rid="12"><div class="num-box">
										<span class="num12">12</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010696572"
											target="_blank" data-eid="qd_A117" data-bid="1010696572">超凡世界</a><i
											class="total">157123</i>
									</div></li>
								<li data-rid="13"><div class="num-box">
										<span class="num13">13</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010807557"
											target="_blank" data-eid="qd_A117" data-bid="1010807557">悠闲乡村直播间</a><i
											class="total">142277</i>
									</div></li>
								<li data-rid="14"><div class="num-box">
										<span class="num14">14</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010828991"
											target="_blank" data-eid="qd_A117" data-bid="1010828991">无敌真寂寞</a><i
											class="total">139862</i>
									</div></li>
								<li data-rid="15"><div class="num-box">
										<span class="num15">15</span>
									</div>
									<div class="name-box">
										<a class="name" href="https://book.qidian.com/info/1010788780"
											target="_blank" data-eid="qd_A117" data-bid="1010788780">深山中的修道者</a><i
											class="total">130925</i>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
				<a class="load-more" id="load-more" href="javascript:"
					data-eid="qd_A119"><em>展开更多</em><span id="btn-more"><i></i></span></a>
			</div>
		</div>
		<div class="banner-wrap box-center mb40" id="banner3" data-l1="32">
			<a href="https://activity.qidian.com/2017/60200000/index"
				target="_blank" data-eid="qd_A120" style="display: inline;"><img
				src="img/0_006.jpg"></a><a href="javascript:" target="_blank"
				data-eid="qd_A120"></a>
		</div>

		<div class="filter-search-wrap" data-l1="21">
			<div class="box-center cf">
				<div class="filter-search-box fl">
					<div class="title fl">没有找到？试试这里</div>
					<div class="filter-search fl">
						<div class="lbf-combobox classify" id="classify">
							<a href="javascript:;" class="lbf-button lbf-combobox-label"
								data-value="21" hidefocus="true"><span
								class="lbf-combobox-caption">玄幻</span><span
								class="lbf-icon lbf-icon-down lbf-combobox-icon"></span></a>
						</div>
						<div class="lbf-combobox" id="serial">
							<a href="javascript:;" class="lbf-button lbf-combobox-label"
								data-value="0" hidefocus="true"><span
								class="lbf-combobox-caption">连载</span><span
								class="lbf-icon lbf-icon-down lbf-combobox-icon"></span></a>
						</div>
						<div class="lbf-combobox" id="charge">
							<a href="javascript:;" class="lbf-button lbf-combobox-label"
								data-value="0" hidefocus="true"><span
								class="lbf-combobox-caption">免费</span><span
								class="lbf-icon lbf-icon-down lbf-combobox-icon"></span></a>
						</div>
						<div class="lbf-combobox words" id="words">
							<a href="javascript:;" class="lbf-button lbf-combobox-label"
								data-value="5" hidefocus="true"><span
								class="lbf-combobox-caption">200万以上</span><span
								class="lbf-icon lbf-icon-down lbf-combobox-icon"></span></a>
						</div>
						<div class="lbf-combobox tags" id="tags">
							<a href="javascript:;" class="lbf-button lbf-combobox-label"
								data-value="全部标签" hidefocus="true"><span
								class="lbf-combobox-caption">全部标签</span><span
								class="lbf-icon lbf-icon-down lbf-combobox-icon"></span></a>
						</div>
						<a id="btn-filter-search" class="red-btn" href="javascript:"
							target="_blank" data-eid="qd_A167">按条件找书</a>
					</div>
				</div>
				<div class="everyone fl" data-eid="qd_A147">
					<p class="title fl">大家都在搜</p>
					<div class="key-words fl">
						<a
							href="http://www.qidian.com/all?size=4&amp;chanId=21&amp;action=0"
							target="_blank" data-eid="qd_A168">玄幻+连载+100万~200万</a><a
							href="http://www.qidian.com/all?chanId=4&amp;action=0&amp;vip=1"
							target="_blank" data-eid="qd_A168">都市+连载+vip</a>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="box-center cf">
				<div class="friend-link">
					<em><a class="yuewen" href="https://www.yuewen.com/"
						target="_blank">阅文集团</a><cite>旗下网站：</cite></em><a
						href="https://www.qidian.com/">起点中文网</a><a
						href="https://www.qdmm.com/" target="_blank">起点女生网</a><a
						href="http://chuangshi.qq.com/" target="_blank">创世中文网</a><a
						href="http://yunqi.qq.com/" target="_blank">云起书院</a>
					<!--<a href="http://www.rongshuxia.com" target="_blank">榕树下</a>-->
					<a href="https://www.hongxiu.com/" target="_blank">红袖添香</a><a
						href="https://www.readnovel.com/" target="_blank">小说阅读网</a><a
						href="https://www.xs8.cn/" target="_blank">言情小说吧</a><a
						href="http://www.xxsy.net/" target="_blank">潇湘书院</a><a
						href="http://www.tingbook.com/" target="_blank">天方听书网</a><a
						href="http://www.lrts.me/" target="_blank">懒人听书</a><a
						href="http://yuedu.yuewen.com/" target="_blank">阅文悦读</a><a
						href="https://www.yuewen.com/app.html#appqq" target="_blank">QQ阅读</a><a
						href="https://www.yuewen.com/app.html#appqd" target="_blank">起点读书</a><a
						href="https://www.yuewen.com/app.html#appzj" target="_blank">作家助手</a><a
						href="https://www.webnovel.com/" target="_blank"
						title="Qidian International">起点国际版</a>
				</div>
				<div class="footer-menu dib-wrap">
					<a href="https://www.qidian.com/about/intro" target="_blank">关于起点</a><a
						href="https://www.qidian.com/about/contact" target="_blank">联系我们</a><a
						href="https://join.yuewen.com/" target="_blank">加入我们</a><a
						href="https://www.qidian.com/help/index/2" target="_blank">帮助中心</a><a
						href="http://123.206.70.240/online/?cid=0&amp;uid=10&amp;code=0"
						class="advice" target="_blank">提交建议</a><a
						href="http://bbs.qidian.com/" target="_blank">起点论坛</a><a
						href="http://comic.qidian.com/" target="_blank">动漫频道</a><a
						href="https://jubao.yuewen.com/" target="_blank">举报中心</a>
				</div>
				<div class="copy-right">
					<p>
						<span>Copyright © 2002-2017 www.qidian.com All Rights
							Reserved</span>版权所有 上海玄霆娱乐信息科技有限公司
					</p>
					<p>上海玄霆娱乐信息科技有限公司 增值电信业务经营许可证沪B2-20080046 沪网文[2015]0081-031
						新出网证（沪）字010 沪ICP备08017520号-1</p>
					<p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！举报电话：010-59357051</p>
					<p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
					<p>联系方式 总机 021-61870500 地址：中国（上海）自由贸易试验区碧波路690号6号楼101、201室</p>
				</div>
				<div class="safety-box">
					<div class="safety-img dib-wrap">
						<a class="site1"
							href="http://www.pdxa.cn/Welcome.Asp?Id=3101151112"
							target="_blank"></a><a class="site2"
							href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20111011181417625"
							target="_blank"></a><a class="site3"
							href="http://www.cyberpolice.cn/wfjb" target="_blank"></a><a
							class="site4"
							href="https://ss.knet.cn/verifyseal.dll?sn=e12120411010037414000000&amp;pa=090993"
							target="_blank"></a><a class="site5" href="http://www.shjbzx.cn/"
							target="_blank"></a><a class="site6"
							href="http://www.12377.cn/node_548446.htm" target="_blank"></a><a
							class="site7" href="http://www.12377.cn/" target="_blank"></a>
					</div>
					<p>起点正积极配合国家最新发布的《关于办理侵犯知识产权刑事案件适用法律若干问题的意见》，</p>
					<p>采用刑事手段进行严厉打击盗版，目前相关公安机关已经抓获犯罪嫌疑人15名！正告盗版网站立即停止侵权行为！</p>
				</div>
			</div>
		</div>
	</div>
	<div id="pin-nav" class="pin-nav-wrap need-search" data-l1="40">
		<div class="box-center cf">
			<div class="nav-list site-nav fl">
				<ul>
					<li class="site"><a class="pin-logo"
						href="https://www.qidian.com/" data-eid="qd_A43"><span></span></a>
						<div class="dropdown">
							<a href="https://www.qdmm.com/" target="" data-eid="qd_A44">起点女生网</a><a
								href="http://chuangshi.qq.com/" target="" data-eid="qd_A45">创世中文网</a><a
								href="http://yunqi.qq.com/" target="" data-eid="qd_A46">云起书院</a>
						</div></li>
					<li><a href="https://www.qidian.com/xuanhuan" target=""
						data-eid="qd_A47">玄幻</a></li>
					<li><a href="https://www.qidian.com/dushi" target=""
						data-eid="qd_A48">都市</a></li>
					<li><a href="https://www.qidian.com/xianxia" target=""
						data-eid="qd_A49">仙侠</a></li>
					<li><a href="https://www.qidian.com/kehuan" target=""
						data-eid="qd_A50">科幻</a></li>
					<li><a href="https://www.qidian.com/youxi" target=""
						data-eid="qd_A56">游戏</a></li>
					<li><a href="https://www.qidian.com/lishi" target=""
						data-eid="qd_A52">历史</a></li>
					<li><a href="https://www.qidian.com/rank" target="_blank"
						data-eid="qd_A53">排行</a></li>
					<li class="more"><a href="javascript:" id="top-nav-more"
						target="" data-eid="qd_A54">更多<span></span></a>
						<div class="dropdown">
							<a href="https://www.qidian.com/all" target="_blank"
								data-eid="qd_A169">全部作品</a><a href="https://www.qidian.com/2cy"
								target="" data-eid="qd_A55">二次元</a><a
								href="https://www.qidian.com/qihuan" target="" data-eid="qd_A51">奇幻</a><a
								href="https://www.qidian.com/wuxia" target="" data-eid="qd_A57">武侠</a><a
								href="https://www.qidian.com/lingyi" target="" data-eid="qd_A58">灵异</a><a
								href="https://www.qidian.com/junshi" target="" data-eid="qd_A59">军事</a><a
								href="https://www.qidian.com/xianshi" target=""
								data-eid="qd_A60">现实</a><a href="https://www.qidian.com/tiyu"
								target="" data-eid="qd_A61">体育</a><a
								href="https://www.qidian.com/duanpian" target=""
								data-eid="qd_A196">短篇</a>
						</div></li>
				</ul>
			</div>
			<div class="nav-list min-user fr">
				<ul>
					<li id="min-search"><form id="formUrl"
							action="//www.qidian.com/search" method="get" target="_blank">
							<label id="pin-search" for="topSearchSubmit" data-eid="qd_A62"><em
								class="iconfont"></em></label><input id="pin-input"
								class="pin-input hide" name="kw" placeholder="异世界的美食家"
								type="text"> <input class="submit-input"
								id="topSearchSubmit" data-eid="qd_A62" type="submit">
						</form></li>
					<li class="line"></li>
					<li class="sign-out"><a id="pin-login" href="javascript:"
						data-eid="qd_A64">登录</a><a class="reg"
						href="https://passport.qidian.com/reg.html?appid=10&amp;areaid=1&amp;target=iframe&amp;ticket=1&amp;auto=1&amp;autotime=30&amp;returnUrl=https%3A%2F%2Fwww.qidian.com"
						target="_blank">注册</a></li>
					<li class="sign-in hidden"><a
						href="https://me.qidian.com/Index.aspx" target="_blank"
						data-eid="qd_A65"><i id="nav-user-name"></i><span></span></a>
						<div class="dropdown">
							<a href="https://me.qidian.com/msg/lists.aspx?page=1"
								target="_blank" data-eid="qd_A66">消息(<i id="top-msg">0</i>)
							</a><a href="https://www.qidian.com/charge/meRedirect"
								target="_blank" data-eid="qd_A67">充值</a><a
								href="https://me.qidian.com/Index.aspx" target="_blank"
								data-eid="qd_A68">个人中心</a><a
								href="https://www.qidian.com/help/kf" target="_blank"
								data-eid="qd_A69">客服中心</a><a id="exit" href="javascript:"
								data-eid="qd_A70">退出</a>
						</div></li>
					<li class="line"></li>
					<li class="book-shelf" id="top-book-shelf"><a
						href="https://me.qidian.com/bookCase/bookCase.aspx"
						target="_blank" data-eid="qd_A63"><em class="iconfont"></em><i>我的书架</i></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--<a class="survey-btn" id="survey-btn" href="javascript:"></a>
<div class="survey-wrap" id="survey-wrap">
    <div class="survey-box">
        <div class="center">
            <p>
                <a class="go-survey" href="http://wj.qq.com/s/631036/53d6" target="_blank"></a>
                <a class="close-survey" id="close-survey" href="javascript:"></a>
            </p>
        </div>
    </div>
</div>-->
	<script>// 全局的通用数据都放g_data变量里
    var g_data = {};
    // 环境变量，会按照环境选择性打log
    g_data.envType = 'pro';
    // 用作统计PV
    g_data.pageId = 'qd_p_qidian';
    // 随机广告
    g_data.adBanner = {
            
adTop:{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common/349573
/112bf88a5026fc7defe189e77bebf6b6/0","adCategoryName":"广
告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/mxsj/way/1?qd_game_key=mxsj1200x60&qd_dd_p1=1833"},

            
adRightBottom:[{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common
/349573/3778294b3dc0f7350eb3db1a4740f522/0","adCategoryName":"广
告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://act.yy.game.qidian.com
/Home/ElevenRebate/index?qd_game_key=hdge216x150&qd_dd_p1=1063"},
{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common/349573
/88afa9e65efec8dfdeb685188c54532a/0","adCategoryName":"广
告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://cpgame.qd.game.qidian.com
/Home/Index/directLogin/name/jyyx/way/1?qd_game_key=jyyx216x150&
qd_dd_p1=413"},{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common
/349573/be1872af5bd23af1dd7bd41df02d7d8e/0","adCategoryName":"广
告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/sgqxz/way/1?qd_game_key=sgqxz216x150&qd_dd_p1=1532"}],

            
adBanner2:[{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common/349573
/f3a873de5ea6f92b7c1799aa696c8ace/0","adCategoryName":"广
告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://cpgame.qd.game.qidian.com
/Home/Index/directLogin/name/gs/way/1?qd_game_key=gs1200x100s&
qd_dd_p1=1175"},{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common
/349573/2200002fb8c0a94d896fe35a0dafe84f/0","adCategoryName":"广
告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://cpgame.qd.game.qidian.com
/Home/Index/directLogin/name/sgqxz/way/1?qd_game_key=sgqxz1200x100s&
qd_dd_p1=560"},{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common
/349573/e3629c48a5805762e0b56b65c7da90af/0","adCategoryName":"广
告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/jyyx/way/1?qd_game_key=jyyx1200x100s&qd_dd_p1=415"}],

            
adBanner3:[{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common/349573
/ac1df86fdb61a20d318aafc0b7f2ffc5/0","adCategoryName":"广
告","colorType":0,"type":1,"isAdv":0,"adJumpUrl":"https://activity.qidian.com/2017/60200000/index"}],

            
adBanner4:[{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common/349573
/60a4915f0239cbc0ade6686cfb19f04f/0","adCategoryName":"广
告","colorType":0,"type":1,"isAdv":0,"adJumpUrl":"http://report.12377.cn:13225/toreportinputNormal_anis.do"}]
    }
        //环境域名 - 判断是否跳转到搜索页
        g_data.domainSearch = 'www.qidian.com/search';
    //环境域名
        g_data.domainPreFix = '';
    //静态资源域名
    g_data.staticPath = '//qidian.gtimg.com/qd';</script>
	<script data-ignore="true" src="js/LBF.js"></script>
	<script>//
 LBF 配置
    
LBF.config({"paths":{"site":"//qidian.gtimg.com/qd/js","qd":"//qidian.gtimg.com/qd","common":"//qidian.gtimg.com/common/1.0.0"},"vars":{"theme":"//qidian.gtimg.com/qd/css"},"combo":true,"debug":false});

    LBF.use(['lib.jQuery'], function ($) {
        window.$ = $;
    });</script>
	<script>LBF.use(['monitor.SpeedReport', 
'qd/js/component/login.a4de6.js', 'qd/js/index/index.b2765.js' ], 
function (SpeedReport, Login, Index) {
        // 页面逻辑入口
        if(Login){
            Login.init().always(function(){
                Index && typeof Index === 'function' && new Index();
            })
        }
        if(219 && 219 != ''){
            $(window).on('load.speedReport', function () {
                // speedTimer[onload]
                speedTimer.push(new Date().getTime());
                var f1 = 7718, // china reading limited's ID
                        f2 = 219, // site ID
                        f3 = 4; // page ID
                // chrome & IE9 Performance API
                SpeedReport.reportPerformance({
                    flag1: f1,
                    flag2: f2,
                    flag3IE: f3,
                    flag3Chrome: f3,
                    rate:0.1,
                    url: '//isdspeed.qidian.com/cgi-bin/r.cgi'
                });
                // common speedTimer:['dom ready', 'onload']
                var speedReport = SpeedReport.create({
                    flag1: f1,
                    flag2: f2,
                    flag3: f3,
                    start: speedZero,
                    rate:0.1,
                    url: '//isdspeed.qidian.com/cgi-bin/r.cgi'
                });
                // chrome & IE9 Performance API range 1~19, common 
speedTimer use 20+
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
    (function() {
        var mta = document.createElement("script");
        mta.src = "//pingjs.qq.com/h5/stats.js?v2.0.2";
        mta.setAttribute("name", "MTAH5");
        mta.setAttribute("sid", "500451537");
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(mta, s);
    })();</script>
	<div class="lbf-autocomplete-suggestions"
		style="position: absolute; display: none; max-height: 384px; z-index: 9999;"></div>
	<div class="lbf-popup lbf-dropdown classify lbf-combobox-panel"
		style="width: 30px; min-width: 72px; height: 300px;">
		<ul class="lbf-combobox-options">
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="21">玄幻</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="1">奇幻</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="2">武侠</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="22">仙侠</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="4">都市</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="15">现实</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="6">军事</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="5">历史</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="7">游戏</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="8">体育</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="9">科幻</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="10">灵异</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="41">女生网</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="12">二次元</a></li>
		</ul>
	</div>
	<div class="lbf-popup lbf-dropdown lbf-combobox-panel"
		style="width: 0px; min-width: 72px; height: auto;">
		<ul class="lbf-combobox-options">
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="0">连载</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="1">完本</a></li>
		</ul>
	</div>
	<div class="lbf-popup lbf-dropdown lbf-combobox-panel"
		style="width: 0px; min-width: 72px; height: auto;">
		<ul class="lbf-combobox-options">
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="0">免费</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="1">收费</a></li>
		</ul>
	</div>
	<div class="lbf-popup lbf-dropdown words lbf-combobox-panel"
		style="width: 0px; min-width: 140px; height: auto;">
		<ul class="lbf-combobox-options">
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="5">200万以上</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="4">100万-200万字</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="3">50万-100万字</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="2">30万-50万字</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="1">30万以下</a></li>
		</ul>
	</div>
	<div class="lbf-popup lbf-dropdown tags lbf-combobox-panel"
		style="width: 30px; min-width: 140px; height: 300px;">
		<ul class="lbf-combobox-options">
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="全部标签">全部标签</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="腹黑">腹黑</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="热血">热血</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="猥琐">猥琐</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="恶搞">恶搞</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="爆笑">爆笑</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="重生">重生</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="技术流">技术流</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="系统流">系统流</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="丧尸">丧尸</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="僵尸">僵尸</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="盗墓">盗墓</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="玄学">玄学</a></li>
			<li class="lbf-combobox-option"><a class="lbf-combobox-item"
				href="javascript:;" onclick="return false;" data-value="鉴宝">鉴宝</a></li>
		</ul>
	</div>
	<script>
	$(function(){
	
			$("#myCarousel").carousel('cycle');
		
	});
</script>
</body>
</html>