<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>


<div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>小说作者：</label>
        <input id="author" name="authorname" class="easyui-combobox" width="50px">
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
    <div>
        <label style="font-size: 15px;">&nbsp&nbsp;操作：</label>
        <button onclick="listReply()" class="easyui-linkbutton">查看回复</button>
        <div style="height: 10px;"></div>
    </div>
</div>

<table id="comment"></table>

<script>

    $('#comment').datagrid({

        url:'comments',//显示所有书籍
        striped: true,//斑马线效果
        pagination: true,//显示分页工具栏
        fit: true,//使得数据表格自适应填充父容器
        rownumbers: true,//显示行号
        pageSize: 20,
        pageList: [20, 50, 100],
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'id', title: '评论编号', width: 120},
            {field: 'title', title: '标题', width: 100},
            {field: 'novel', title: '小说名', width: 100},
            {field: 'author', title: '作者', width: 100},
            {field: 'reader', title: '读者名', width: 100},
            {field: 'content', title: '评论内容', width: 200},
            {field: 'created', title: '创建时间', formatter: function (value) {
                return moment(value).format('YYYY年MM月DD日 hh:mm:ss');

            }}

        ]]
    });


    //作者下拉框
    $('#author').combobox({
        url:'authorList',
        valueField:'id',//相当于option的value值
        textField:'authorname',//相当于<option></option>之间的显示值 value:1000    //默认显示值
    });

    function listReply() {
        var selections = $('#comment').datagrid('getSelections');
        if(selections.length>1){
            $.messager.alert('警告','只能选择一条评论查看回复!','warning');
        }else{
            var pid = selections[0].id;
            novel.closeTabs("查看回复");
            novel.addTabs("查看回复","replyPage?pid="+pid+"");
        }

    }
</script>




