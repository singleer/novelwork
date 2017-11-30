<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html><head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>发表讨论-作品讨论区《斗罗大陆》-起点中文小说网</title>
    <meta name="keywords" content="发表讨论,斗罗大陆,起点中文小说网">
    <meta name="description" content="发表讨论-作品讨论区《斗罗大陆》-起点中文小说网">
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
<link rel="stylesheet" data-ignore="true" href="css/common2.css">
<link data-ignore="true" rel="stylesheet" href="css/send2.css">
<link charset="utf-8" rel="stylesheet" href="css/LightTip2.css"><style name="lbf-overlay">.lbf-overlay { position:fixed; top:0; left:0;}</style>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script type="text/javascript">
        function setShowLength(obj, maxlength, id)
        {
            var rem = obj.value.length;
            var wid = id;
            document.getElementById(wid).innerHTML =rem;
        }
            function tijiao(){
                var title = $("#title").val();
                var content = $("#content").val();
                var bookId= $("#bookId").val();
                var jsonObj = {"title":title,"content":content,"bookId":bookId};
                //$.ajax提交
                    $.ajax({
                        url:"${pageContext.request.contextPath}/commitcomment",
                        data:jsonObj,
                        dataType:"text",
                        type:"post",
                        cache:false,
                        success:function(rec){
                            if(rec>0){
                                alert('添加成功');
                                window.location.href="${pageContext.request.contextPath}/jump?id=${nbookCustom.id }"
                            }else{
                                alert("添加失败");
                            }
                        },
                        error:function(){
                            alert("服务器出错!");
                        }
                    });
            }
    </script>
</head>

<body data-dynamic="false">
    <div class="main">
    <div class="bg">
        <p class="breadcrumb main-wrap">
            <span >${nbookCustom.title }的讨论区</span>
        </p>
    </div>
    <div class="main-wrap">
        <form class="form" id="commitAddForm" method="post" target="_blank">
            <input name="title" id="title" placeholder="填写标题的帖子更受欢迎哦" type="text">
            <textarea name="content" id="content" maxlength="1000" onkeyup="javascript:setShowLength(this, 15, 'cost_tpl_title_length');" placeholder="如何写一个受欢迎的帖子：
1、喜欢不喜欢本书的原因 
2、支持和鼓励作者的话 
3、有深度的讨论作品剧情、角色等"></textarea>
            <div class="bar cf">
                <button class="cant fl mr20" value="发表" onclick="tijiao()" >发表</button>
                <span class="textNum" id="cost_tpl_title_length">0</span>/1000
            </div>
            <input name="bookId" id="bookId" value="${nbookCustom.id }" type="hidden">
        </form>
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
</div>
</body></html>