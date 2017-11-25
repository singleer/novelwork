<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <!-- 导入easyui的样式表 -->
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" href="css/common.css">

    <style>
        a{
            text-decoration: none;
            color: white;
            font-size: 15px;
        }
    </style>

</head>
<body class="easyui-layout">
<div data-options="region:'north'" style="height:60px;padding-left:10px;background-color: deepskyblue">

    <div><a style="float: left; margin-top: 10px;margin-left: 150px;font-size:30px ;color: white;text-align: center; ">后&nbsp;台&nbsp;管&nbsp;理&nbsp;系&nbsp;统</a></div>
    <ul style="list-style-type: none;margin-top: 17px;">

        <li style="float: right;"><a href="#" onClick="javaScript:checkLogout()">安全退出&nbsp;&nbsp;</a></li>
        <li style="float: right;"><a href="#">站内公告&nbsp;|&nbsp;</a></li>
        <li style="float: right;"><a href="index">返回首页&nbsp;|&nbsp;</a></li>
        <li style="float: right;"><a>您好,
            <span style="font-size: 30px;font-weight: bolder;color: red;">${sessionAdmin.adminname} </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    </ul>
</div>
<div data-options="region:'south'" style="padding:5px;background:#eee;">
    系统版本：V2.0
</div>
<div data-options="region:'west'" style="width:200px;">
    <div id="menu" class="easyui-accordion" data-options="multiple:true,border:false">
        <div title="小说管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'book-list'}">查询小说</li>
                <li data-options="attributes:{'href':'book-add'}">新增小说</li>
            </ul>
        </div>
        <div title="作者管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'author-list'}">查询作者</li>
                <li data-options="attributes:{'href':'author-add'}">新增作者</li>
            </ul>
        </div>
        <div title="评论管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'comment-list'}">查询评论</li>
            </ul>
        </div>
        <div title="书籍管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'index-item'}">solr索引库维护</li>
            </ul>
        </div>
        <div title="账单管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'order-list'}">查询账单</li>
            </ul>
        </div>
        <div title="新闻管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'news-list'}">查看新闻</li>
            </ul>
        </div>
        <div title="系统管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'index-item'}">solr索引库维护</li>
            </ul>
        </div>
        <div title="小说分类管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'bookcat-list'}">查询分类</li>
                <li data-options="attributes:{'href':'bookcat-add'}">新增子分类</li>
                <li data-options="attributes:{'href':'bookcat-add1'}">新增根分类</li>
            </ul>
        </div>
        <div title="读者管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'reader-list'}">查看读者</li>
            </ul>
        </div>
        <div title="系统管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'index-item'}">solr索引库维护</li>
            </ul>
        </div>
        <div title="系统管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'index-item'}">solr索引库维护</li>
            </ul>
        </div>
        <div title="系统管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'index-item'}">solr索引库维护</li>
            </ul>
        </div>
        <div title="系统管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'index-item'}">solr索引库维护</li>
            </ul>
        </div>
        <div title="系统管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'index-item'}">solr索引库维护</li>
            </ul>
        </div>
    </div>
</div>
<div data-options="region:'center'" style="background:#eee;">
    <div id="tab" class="easyui-tabs" data-options="fit:true">
        <div title="欢迎页面" style="padding:20px;"><h1 style="text-align: center;margin:200px">千锋小说欢迎你</h1></div>
    </div>
</div>
<!-- jquery -->
<script src="js/jquery-easyui-1.5/jquery.min.js"></script>
<!-- jquery easyui -->
<script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<%--引入日期处理库--%>
<script src="js/moment/moment-with-locales.js"></script>
<script>
    moment.locale('zh-cn');
</script>

<!-- ueditor配置文件 -->
<script type="text/javascript" src="js/ueditor/ueditor.config.js"></script>
<!-- ueditor编辑器源码文件 -->
<script type="text/javascript" src="js/ueditor/ueditor.all.js"></script>


<script>
    UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
    UE.Editor.prototype.getActionUrl = function(action) {
        if (action == 'uploadimage') {
            return 'http://localhost:8080/novelwork/file/upload';
        }else {
            return this._bkGetActionUrl.call(this, action);
        }
    }
</script>


<!-- 自定义脚本 -->
<script src="js/common.js"></script>
<!-- 自定义js -->
<script>
    novel.registerMenuEvent();
</script>
<script type="text/javascript">
    function checkLogout(){
        var flag = confirm("确定退出吗?");
        if(flag){
            window.location.href="${pageContext.request.contextPath}/logout"
        }

    }
</script>
</body>
</html>